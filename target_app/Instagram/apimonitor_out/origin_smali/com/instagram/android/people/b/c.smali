.class final Lcom/instagram/android/people/b/c;
.super Ljava/lang/Object;
.source "PeopleTagFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/people/b/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/people/b/c;->a:Lcom/instagram/android/people/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/people/b/c;->a:Lcom/instagram/android/people/b/a;

    invoke-virtual {v0}, Lcom/instagram/android/people/b/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    return-void
.end method