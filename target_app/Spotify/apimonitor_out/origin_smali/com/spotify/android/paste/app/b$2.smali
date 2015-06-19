.class final Lcom/spotify/android/paste/app/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/android/paste/app/b;->a()Lcom/spotify/android/paste/app/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/android/paste/app/a;

.field final synthetic b:Lcom/spotify/android/paste/app/b;


# direct methods
.method constructor <init>(Lcom/spotify/android/paste/app/b;Lcom/spotify/android/paste/app/a;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/android/paste/app/b$2;->b:Lcom/spotify/android/paste/app/b;

    iput-object p2, p0, Lcom/spotify/android/paste/app/b$2;->a:Lcom/spotify/android/paste/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/android/paste/app/b$2;->b:Lcom/spotify/android/paste/app/b;

    invoke-static {v0}, Lcom/spotify/android/paste/app/b;->b(Lcom/spotify/android/paste/app/b;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/spotify/android/paste/app/b$2;->b:Lcom/spotify/android/paste/app/b;

    invoke-static {v0}, Lcom/spotify/android/paste/app/b;->b(Lcom/spotify/android/paste/app/b;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/android/paste/app/b$2;->a:Lcom/spotify/android/paste/app/a;

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_14
    iget-object v0, p0, Lcom/spotify/android/paste/app/b$2;->a:Lcom/spotify/android/paste/app/a;

    invoke-virtual {v0}, Lcom/spotify/android/paste/app/a;->dismiss()V

    return-void
.end method
