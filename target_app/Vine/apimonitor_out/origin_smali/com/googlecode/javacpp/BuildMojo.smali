.class public Lcom/googlecode/javacpp/BuildMojo;
.super Lorg/apache/maven/plugin/AbstractMojo;
.source "BuildMojo.java"


# instance fields
.field private classOrPackageName:Ljava/lang/String;

.field private classOrPackageNames:[Ljava/lang/String;

.field private classPath:Ljava/lang/String;

.field private classPaths:[Ljava/lang/String;

.field private compile:Z

.field private compilerOptions:[Ljava/lang/String;

.field private copyLibs:Z

.field private environmentVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private header:Z

.field private jarPrefix:Ljava/lang/String;

.field private outputDirectory:Ljava/io/File;

.field private outputName:Ljava/lang/String;

.field private properties:Ljava/lang/String;

.field private propertyFile:Ljava/io/File;

.field private propertyKeysAndValues:Ljava/util/Properties;

.field private skip:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/maven/plugin/AbstractMojo;-><init>()V

    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->classPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->outputDirectory:Ljava/io/File;

    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->outputName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/javacpp/BuildMojo;->compile:Z

    iput-boolean v2, p0, Lcom/googlecode/javacpp/BuildMojo;->header:Z

    iput-boolean v2, p0, Lcom/googlecode/javacpp/BuildMojo;->copyLibs:Z

    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->jarPrefix:Ljava/lang/String;

    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->properties:Ljava/lang/String;

    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->propertyFile:Ljava/io/File;

    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->propertyKeysAndValues:Ljava/util/Properties;

    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;

    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->environmentVariables:Ljava/util/Map;

    iput-object v1, p0, Lcom/googlecode/javacpp/BuildMojo;->compilerOptions:[Ljava/lang/String;

    iput-boolean v2, p0, Lcom/googlecode/javacpp/BuildMojo;->skip:Z

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/maven/plugin/MojoExecutionException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    const-string v3, "Executing JavaCPP Builder"

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->info(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/maven/plugin/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1df

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "classPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->classPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "classPaths: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputDirectory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->outputDirectory:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->outputName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/googlecode/javacpp/BuildMojo;->compile:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/googlecode/javacpp/BuildMojo;->header:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyLibs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/googlecode/javacpp/BuildMojo;->copyLibs:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jarPrefix: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->jarPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "properties: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->properties:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "propertyFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->propertyFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "propertyKeysAndValues: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->propertyKeysAndValues:Ljava/util/Properties;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "classOrPackageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "classOrPackageNames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "environmentVariables: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->environmentVariables:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compilerOptions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->compilerOptions:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skip: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/googlecode/javacpp/BuildMojo;->skip:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V

    :cond_1df
    iget-boolean v2, p0, Lcom/googlecode/javacpp/BuildMojo;->skip:Z

    if-eqz v2, :cond_1ed

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    const-string v3, "Skipped execution of JavaCPP Builder"

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->info(Ljava/lang/CharSequence;)V

    :cond_1ec
    :goto_1ec
    return-void

    :cond_1ed
    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    if-eqz v2, :cond_2e2

    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classPath:Ljava/lang/String;

    if-eqz v2, :cond_2e2

    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->classPath:Ljava/lang/String;

    aput-object v4, v2, v3

    :cond_20f
    :goto_20f
    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;

    if-eqz v2, :cond_2f2

    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2f2

    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;

    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageName:Ljava/lang/String;

    aput-object v4, v2, v3

    :cond_231
    :goto_231
    new-instance v2, Lcom/googlecode/javacpp/Builder;

    invoke-direct {v2}, Lcom/googlecode/javacpp/Builder;-><init>()V

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->classPaths([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->outputDirectory:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->outputDirectory(Ljava/io/File;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->outputName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->outputName(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/googlecode/javacpp/BuildMojo;->compile:Z

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->compile(Z)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/googlecode/javacpp/BuildMojo;->header:Z

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->header(Z)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/googlecode/javacpp/BuildMojo;->copyLibs:Z

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->copyLibs(Z)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->jarPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->jarPrefix(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->properties:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->properties(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->propertyFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->propertyFile(Ljava/io/File;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->propertyKeysAndValues:Ljava/util/Properties;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->properties(Ljava/util/Properties;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->classesOrPackages([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->environmentVariables:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->environmentVariables(Ljava/util/Map;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/BuildMojo;->compilerOptions:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Builder;->compilerOptions([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Builder;->build()[Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    const-string v3, "Successfully executed JavaCPP Builder"

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->info(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/maven/plugin/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1ec

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputFiles: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->debug(Ljava/lang/CharSequence;)V
    :try_end_2b9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b9} :catch_2bb

    goto/16 :goto_1ec

    :catch_2bb
    move-exception v0

    invoke-virtual {p0}, Lcom/googlecode/javacpp/BuildMojo;->getLog()Lorg/apache/maven/plugin/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute JavaCPP Builder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/maven/plugin/logging/Log;->error(Ljava/lang/CharSequence;)V

    new-instance v2, Lorg/apache/maven/plugin/MojoExecutionException;

    const-string v3, "Failed to execute JavaCPP Builder"

    invoke-direct {v2, v3, v0}, Lorg/apache/maven/plugin/MojoExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_2e2
    :try_start_2e2
    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classPath:Ljava/lang/String;

    if-eqz v2, :cond_20f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->classPath:Ljava/lang/String;

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classPaths:[Ljava/lang/String;

    goto/16 :goto_20f

    :cond_2f2
    iget-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageName:Ljava/lang/String;

    if-eqz v2, :cond_231

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageName:Ljava/lang/String;

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/googlecode/javacpp/BuildMojo;->classOrPackageNames:[Ljava/lang/String;
    :try_end_300
    .catch Ljava/lang/Exception; {:try_start_2e2 .. :try_end_300} :catch_2bb

    goto/16 :goto_231
.end method
