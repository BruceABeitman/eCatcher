.class final Lcom/twidroid/net/hockeyapp/android/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/hockeyapp/android/c;->c(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/twidroid/net/hockeyapp/android/d;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/twidroid/net/hockeyapp/android/c$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/twidroid/net/hockeyapp/android/c$2;->b:Lcom/twidroid/net/hockeyapp/android/d;

    iput-boolean p3, p0, Lcom/twidroid/net/hockeyapp/android/c$2;->c:Z

    iput-object p4, p0, Lcom/twidroid/net/hockeyapp/android/c$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/c$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/c$2;->b:Lcom/twidroid/net/hockeyapp/android/d;

    iget-boolean v2, p0, Lcom/twidroid/net/hockeyapp/android/c$2;->c:Z

    iget-object v3, p0, Lcom/twidroid/net/hockeyapp/android/c$2;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/twidroid/net/hockeyapp/android/c;->b(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V

    return-void
.end method
