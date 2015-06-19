.class public Ljavax/activation/ActivationDataFlavor;
.super Lc/a/a/a;
.source "SourceFile"


# instance fields
.field private humanPresentableName:Ljava/lang/String;

.field private mimeObject:Ljavax/activation/MimeType;

.field private mimeType:Ljava/lang/String;

.field private representationClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lc/a/a/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    invoke-super {p0}, Lc/a/a/a;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    iput-object p2, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3}, Lc/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    iput-object p2, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lc/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    :try_start_e
    const-string v0, "java.io.InputStream"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_16} :catch_19

    :goto_16
    iput-object p2, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    return-void

    :catch_19
    move-exception v0

    goto :goto_16
.end method


# virtual methods
.method public equals(Lc/a/a/a;)Z
    .registers 4

    invoke-virtual {p0, p1}, Ljavax/activation/ActivationDataFlavor;->isMimeTypeEqual(Lc/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lc/a/a/a;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getHumanPresentableName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRepresentationClass()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    return-object v0
.end method

.method public isMimeTypeEqual(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    if-nez v0, :cond_d

    new-instance v0, Ljavax/activation/MimeType;

    iget-object v1, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    :cond_d
    new-instance v0, Ljavax/activation/MimeType;

    invoke-direct {v0, p1}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_0 .. :try_end_12} :catch_19

    iget-object v1, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    invoke-virtual {v1, v0}, Ljavax/activation/MimeType;->match(Ljavax/activation/MimeType;)Z

    move-result v0

    :goto_18
    return v0

    :catch_19
    move-exception v0

    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_18
.end method

.method protected normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method protected normalizeMimeTypeParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    return-object p2
.end method

.method public setHumanPresentableName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    return-void
.end method
