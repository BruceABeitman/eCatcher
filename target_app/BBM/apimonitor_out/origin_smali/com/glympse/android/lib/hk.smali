.class Lcom/glympse/android/lib/hk;
.super Ljava/lang/Object;
.source "ServerError.java"

# interfaces
.implements Lcom/glympse/android/api/GServerError;


# instance fields
.field private _type:I

.field private hg:Ljava/lang/String;

.field private rL:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/glympse/android/lib/hk;->_type:I

    iput-object p2, p0, Lcom/glympse/android/lib/hk;->hg:Ljava/lang/String;

    iput-object p3, p0, Lcom/glympse/android/lib/hk;->rL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/hk;->hg:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDetails()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/hk;->rL:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/hk;->_type:I

    return v0
.end method
