.class final Lcom/instagram/android/login/fragment/bo;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;Z)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/login/fragment/bo;->b:Lcom/instagram/android/login/fragment/an;

    iput-boolean p2, p0, Lcom/instagram/android/login/fragment/bo;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/login/fragment/bo;->b:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->m(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/fragment/RegisterParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/bo;->b:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1, v0}, Lcom/instagram/android/login/fragment/an;->d(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/android/login/fragment/bo;->b:Lcom/instagram/android/login/fragment/an;

    sget-object v2, Lcom/instagram/android/login/fragment/bx;->c:Lcom/instagram/android/login/fragment/bx;

    invoke-static {v1, v2}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V

    iget-object v1, p0, Lcom/instagram/android/login/fragment/bo;->b:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->n(Lcom/instagram/android/login/fragment/an;)V

    sget-object v1, Lcom/instagram/o/b;->T:Lcom/instagram/o/b;

    invoke-virtual {v1}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "rank"

    invoke-virtual {v0, v1, p2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    iget-boolean v0, p0, Lcom/instagram/android/login/fragment/bo;->a:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/instagram/android/login/fragment/bo;->b:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->o(Lcom/instagram/android/login/fragment/an;)V

    :cond_3f
    return-void
.end method
