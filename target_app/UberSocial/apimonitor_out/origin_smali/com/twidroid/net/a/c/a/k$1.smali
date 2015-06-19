.class Lcom/twidroid/net/a/c/a/k$1;
.super Lcom/twidroid/net/hockeyapp/android/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/a/c/a/k;->b(Lorg/json/JSONObject;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/net/a/c/a/k;


# direct methods
.method constructor <init>(Lcom/twidroid/net/a/c/a/k;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/a/c/a/k$1;->a:Lcom/twidroid/net/a/c/a/k;

    invoke-direct {p0}, Lcom/twidroid/net/hockeyapp/android/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "Not a crash, exception was handled properly"

    return-object v0
.end method
