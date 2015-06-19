.class public final Lorg/apache/log4j/c/m;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Lorg/apache/log4j/c/m;
.field static b:Ljava/lang/Class;
.field static c:Ljava/lang/Class;
.field private final d:Ljava/lang/reflect/Method;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lorg/apache/log4j/c/m;
invoke-direct {v0}, Lorg/apache/log4j/c/m;-><init>()V
sput-object v0, Lorg/apache/log4j/c/m;->a:Lorg/apache/log4j/c/m;
return-void
.end method
.method private constructor <init>()V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
:try_start_4
sget-object v1, Lorg/apache/log4j/c/m;->b:Ljava/lang/Class;
if-nez v1, :cond_1a
const-string v1, "org.apache.log4j.k.k"
invoke-static {v1}, Lorg/apache/log4j/c/m;->a(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v1
sput-object v1, Lorg/apache/log4j/c/m;->b:Ljava/lang/Class;
:goto_10
const-string v2, "getPropertyKeySet"
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
:try_end_16
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_1d
move-result-object v0
:goto_17
iput-object v0, p0, Lorg/apache/log4j/c/m;->d:Ljava/lang/reflect/Method;
return-void
:try_start_1a
:cond_1a
sget-object v1, Lorg/apache/log4j/c/m;->b:Ljava/lang/Class;
:try_end_1c
.catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1c} :catch_1d
goto :goto_10
:catch_1d
move-exception v1
goto :goto_17
.end method
.method static a(Ljava/lang/String;)Ljava/lang/Class;
.registers 3
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_3
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
new-instance v1, Ljava/lang/NoClassDefFoundError;
invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
throw v0
.end method
.method public a(Lorg/apache/log4j/k/k;)Ljava/util/Set;
.registers 8
const/4 v1, 0x0
iget-object v0, p0, Lorg/apache/log4j/c/m;->d:Ljava/lang/reflect/Method;
if-eqz v0, :cond_e
iget-object v0, p0, Lorg/apache/log4j/c/m;->d:Ljava/lang/reflect/Method;
invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Set;
:goto_d
return-object v0
:cond_e
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v2, Ljava/io/ObjectOutputStream;
invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v2
sget-object v0, Lorg/apache/log4j/c/m;->c:Ljava/lang/Class;
if-nez v0, :cond_53
const-string v0, "org.apache.log4j.i.p"
invoke-static {v0}, Lorg/apache/log4j/c/m;->a(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/c/m;->c:Ljava/lang/Class;
:goto_2e
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
const/4 v0, 0x6
aget-byte v0, v2, v0
if-eqz v0, :cond_40
const/4 v0, 0x7
aget-byte v0, v2, v0
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v4
if-ne v0, v4, :cond_74
:cond_40
const/4 v0, 0x0
:goto_41
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v4
if-ge v0, v4, :cond_56
add-int/lit8 v4, v0, 0x8
invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C
move-result v5
int-to-byte v5, v5
aput-byte v5, v2, v4
add-int/lit8 v0, v0, 0x1
goto :goto_41
:cond_53
sget-object v0, Lorg/apache/log4j/c/m;->c:Ljava/lang/Class;
goto :goto_2e
:cond_56
new-instance v0, Ljava/io/ByteArrayInputStream;
invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
new-instance v2, Ljava/io/ObjectInputStream;
invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
instance-of v3, v0, Lorg/apache/log4j/i/p;
if-eqz v3, :cond_72
check-cast v0, Lorg/apache/log4j/i/p;
invoke-virtual {v0}, Lorg/apache/log4j/i/p;->n()Ljava/util/Set;
move-result-object v0
:goto_6e
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
goto :goto_d
:cond_72
move-object v0, v1
goto :goto_6e
:cond_74
move-object v0, v1
goto :goto_d
.end method