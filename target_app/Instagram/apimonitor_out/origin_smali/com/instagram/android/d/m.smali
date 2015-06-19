.class final Lcom/instagram/android/d/m;
.super Ljava/lang/Object;
.source "AvatarHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/d/j;


# direct methods
.method constructor <init>(Lcom/instagram/android/d/j;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/d/m;->a:Lcom/instagram/android/d/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/d/m;->a:Lcom/instagram/android/d/j;

    iget-object v0, v0, Lcom/instagram/android/d/j;->a:Lcom/instagram/android/d/f;

    iget-object v0, v0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/dialog/g;

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/g;->a()V

    return-void
.end method
