.class final Lcom/twidroid/d/b$2;
.super Lcom/twidroid/net/hockeyapp/android/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/d/b;->b(Landroid/content/Context;)Z
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/net/hockeyapp/android/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "error while getting advertisingIdInfo"

    return-object v0
.end method
