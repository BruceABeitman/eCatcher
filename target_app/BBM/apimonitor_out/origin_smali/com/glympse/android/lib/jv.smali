.class Lcom/glympse/android/lib/jv;
.super Ljava/lang/Object;
.source "UserMessage.java"

# interfaces
.implements Lcom/glympse/android/lib/GUserMessage;


# instance fields
.field private mM:Lcom/glympse/android/api/GUser;

.field private uz:Lcom/glympse/android/api/GDataRow;


# direct methods
.method public constructor <init>(Lcom/glympse/android/api/GUser;Lcom/glympse/android/api/GDataRow;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/jv;->mM:Lcom/glympse/android/api/GUser;

    iput-object p2, p0, Lcom/glympse/android/lib/jv;->uz:Lcom/glympse/android/api/GDataRow;

    return-void
.end method


# virtual methods
.method public getMessage()Lcom/glympse/android/api/GDataRow;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/jv;->uz:Lcom/glympse/android/api/GDataRow;

    return-object v0
.end method

.method public getUser()Lcom/glympse/android/api/GUser;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/jv;->mM:Lcom/glympse/android/api/GUser;

    return-object v0
.end method
