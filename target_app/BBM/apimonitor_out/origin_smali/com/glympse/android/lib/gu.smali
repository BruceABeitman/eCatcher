.class Lcom/glympse/android/lib/gu;
.super Lcom/glympse/android/lib/go;
.source "PersonUser.java"


# instance fields
.field private mM:Lcom/glympse/android/api/GUser;


# direct methods
.method public constructor <init>(Lcom/glympse/android/api/GUser;)V
    .registers 3

    invoke-direct {p0}, Lcom/glympse/android/lib/go;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/gu;->mM:Lcom/glympse/android/api/GUser;

    invoke-interface {p1}, Lcom/glympse/android/api/GUser;->getAvatar()Lcom/glympse/android/api/GImage;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/gu;->mj:Lcom/glympse/android/api/GImage;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/gu;->mM:Lcom/glympse/android/api/GUser;

    invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/glympse/android/api/GUser;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/gu;->mM:Lcom/glympse/android/api/GUser;

    return-object v0
.end method
