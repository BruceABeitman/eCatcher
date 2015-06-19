.class final Lcom/instagram/android/fragment/ft;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fk;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fk;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fk;

    invoke-static {v0}, Lcom/instagram/android/fragment/fk;->e(Lcom/instagram/android/fragment/fk;)Lcom/instagram/android/d/n;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fk;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/fk;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/d/n;->a(Landroid/content/Context;)V

    return-void
.end method
