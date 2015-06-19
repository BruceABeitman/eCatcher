.class public final Lcom/instagram/android/widget/f;
.super Ljava/lang/Object;
.source "FindPeopleButtonsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/widget/e;


# direct methods
.method public constructor <init>(Lcom/instagram/android/widget/e;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/widget/f;->a:Lcom/instagram/android/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/widget/f;->a:Lcom/instagram/android/widget/e;

    invoke-static {v0}, Lcom/instagram/android/widget/e;->a(Lcom/instagram/android/widget/e;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    new-instance v0, Lcom/instagram/android/widget/a;

    iget-object v1, p0, Lcom/instagram/android/widget/f;->a:Lcom/instagram/android/widget/e;

    invoke-static {v1}, Lcom/instagram/android/widget/e;->d(Lcom/instagram/android/widget/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/widget/f;->a:Lcom/instagram/android/widget/e;

    invoke-static {v2}, Lcom/instagram/android/widget/e;->b(Lcom/instagram/android/widget/e;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/widget/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0}, Lcom/instagram/android/widget/a;->b()V

    return-void
.end method
