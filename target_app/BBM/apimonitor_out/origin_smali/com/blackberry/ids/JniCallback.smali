.class Lcom/blackberry/ids/JniCallback;
.super Ljava/lang/Object;
.source "JniCallback.java"


# instance fields
.field protected final a:J

.field protected final b:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null pointer for JniCallback"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iput-wide p1, p0, Lcom/blackberry/ids/JniCallback;->a:J

    iput-wide p3, p0, Lcom/blackberry/ids/JniCallback;->b:J

    return-void
.end method
