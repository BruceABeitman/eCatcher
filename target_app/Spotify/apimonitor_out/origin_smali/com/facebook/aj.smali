.class public abstract Lcom/facebook/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
    .registers 7

    const-wide/high16 v3, -0x8000

    const/4 v0, 0x0

    if-nez p0, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_5
.end method

.method static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V
    .registers 5

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/os/Bundle;
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public abstract b()V
.end method
