.class public Lcom/twidroid/fragments/e/c;
.super Lcom/twidroid/fragments/base/e;
.source "SourceFile"
.field public static final G:Ljava/lang/String; = "FavoriteFragment"
.field private static I:I
.field private H:Z
.field private J:Z
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x64
sput v0, Lcom/twidroid/fragments/e/c;->I:I
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/twidroid/fragments/base/e;-><init>()V
return-void
.end method
.method public constructor <init>(Lcom/twidroid/model/twitter/c;)V
.registers 2
invoke-direct {p0}, Lcom/twidroid/fragments/base/e;-><init>()V
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/c;->a(Lcom/twidroid/model/twitter/c;)V
return-void
.end method
.method static synthetic Z()I
.registers 1
sget v0, Lcom/twidroid/fragments/e/c;->I:I
return v0
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/c;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/c;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/c;Ljava/util/List;)Ljava/util/List;
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/c;->b:Ljava/util/List;
return-object p1
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/c;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/e/c;->J:Z
return p1
.end method
.method static synthetic b(Lcom/twidroid/fragments/e/c;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/c;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic c(Lcom/twidroid/fragments/e/c;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/c;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic d(Lcom/twidroid/fragments/e/c;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/c;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic e(Lcom/twidroid/fragments/e/c;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/c;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic f(Lcom/twidroid/fragments/e/c;)Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/fragments/e/c;->J:Z
return v0
.end method
.method static synthetic g(Lcom/twidroid/fragments/e/c;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/c;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic h(Lcom/twidroid/fragments/e/c;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/c;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic i(Lcom/twidroid/fragments/e/c;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/c;->b:Ljava/util/List;
return-object v0
.end method
.method static synthetic j(Lcom/twidroid/fragments/e/c;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/c;->b:Ljava/util/List;
return-object v0
.end method
.method static synthetic k(Lcom/twidroid/fragments/e/c;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/c;->b:Ljava/util/List;
return-object v0
.end method
.method public S()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/e/c;->u:Lcom/twidroid/net/c/a/f;
const v1, 0x7f0c001e
invoke-interface {v0, v1}, Lcom/twidroid/net/c/a/f;->e(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected a(I)V
.registers 2
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->a(I)V
return-void
.end method
.method protected b()V
.registers 4
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/twidroid/fragments/e/c;->w()V
iget-object v0, p0, Lcom/twidroid/fragments/e/c;->c:Lcom/twidroid/UberSocialApplication;
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/twidroid/fragments/e/c;->a:Lcom/twidroid/model/twitter/c;
if-nez v0, :cond_31
iget-object v0, p0, Lcom/twidroid/fragments/e/c;->c:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->m()Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/e/c;->b:Ljava/util/List;
:goto_19
iget-boolean v0, p0, Lcom/twidroid/fragments/e/c;->H:Z
if-eqz v0, :cond_44
iget-object v0, p0, Lcom/twidroid/fragments/e/c;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_44
invoke-virtual {p0}, Lcom/twidroid/fragments/e/c;->r()Z
move-result v0
if-nez v0, :cond_44
iput-boolean v1, p0, Lcom/twidroid/fragments/e/c;->H:Z
invoke-virtual {p0}, Lcom/twidroid/fragments/e/c;->d()V
goto :goto_8
:cond_31
iget-object v0, p0, Lcom/twidroid/fragments/e/c;->c:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
iget-object v2, p0, Lcom/twidroid/fragments/e/c;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
invoke-virtual {v0, v2}, Lcom/twidroid/b/a/b;->g(I)Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/e/c;->b:Ljava/util/List;
goto :goto_19
:cond_44
iget-object v0, p0, Lcom/twidroid/fragments/e/c;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_5f
invoke-virtual {p0}, Lcom/twidroid/fragments/e/c;->P()V
:goto_4f
invoke-virtual {p0}, Lcom/twidroid/fragments/e/c;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
iget-object v2, p0, Lcom/twidroid/fragments/e/c;->b:Ljava/util/List;
invoke-virtual {v0, v2}, Lcom/twidroid/ui/a/am;->c(Ljava/util/List;)V
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/e/c;->c(Z)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/c;->M()V
goto :goto_8
:cond_5f
iget-object v0, p0, Lcom/twidroid/fragments/e/c;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
sget v2, Lcom/twidroid/fragments/e/c;->I:I
if-le v0, v2, :cond_6d
const/4 v0, 0x1
:goto_6a
iput-boolean v0, p0, Lcom/twidroid/fragments/e/c;->J:Z
goto :goto_4f
:cond_6d
move v0, v1
goto :goto_6a
.end method
.method protected b(Lcom/twidroid/model/twitter/c;)V
.registers 3
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->b(Lcom/twidroid/model/twitter/c;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_19
invoke-virtual {p0}, Lcom/twidroid/fragments/e/c;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
if-eqz v0, :cond_16
invoke-virtual {p0}, Lcom/twidroid/fragments/e/c;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->h()V
:cond_16
invoke-virtual {p0}, Lcom/twidroid/fragments/e/c;->b()V
:cond_19
return-void
.end method
.method public b(Z)V
.registers 10
const-wide/16 v1, 0x0
const/4 v7, 0x0
const/4 v3, 0x1
const/4 v4, 0x0
const-string v0, "FavoriteFragment"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "::onRefresh: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v0, v5}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/c;->r()Z
move-result v0
if-eqz v0, :cond_24
:goto_23
:cond_23
return-void
:cond_24
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->b(Z)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/c;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/a/am;
new-instance v5, Lcom/twidroid/fragments/e/e;
invoke-direct {v5, v7}, Lcom/twidroid/fragments/e/e;-><init>(Lcom/twidroid/fragments/e/c$1;)V
if-eqz p1, :cond_6a
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->d()Ljava/lang/Long;
move-result-object v6
if-eqz v6, :cond_3e
invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
move-result-wide v1
:cond_3e
iput-wide v1, v5, Lcom/twidroid/fragments/e/e;->c:J
:try_start_40
:goto_40
iput-boolean p1, v5, Lcom/twidroid/fragments/e/e;->b:Z
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->getCount()I
move-result v0
sget v1, Lcom/twidroid/fragments/e/c;->I:I
if-lt v0, v1, :cond_77
move v0, v3
:goto_4b
iput-boolean v0, v5, Lcom/twidroid/fragments/e/e;->a:Z
new-instance v0, Lcom/twidroid/fragments/e/d;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/twidroid/fragments/e/d;-><init>(Lcom/twidroid/fragments/e/c;Lcom/twidroid/fragments/e/c$1;)V
const/4 v1, 0x1
new-array v1, v1, [Lcom/twidroid/fragments/e/e;
const/4 v2, 0x0
aput-object v5, v1, v2
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/d;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
:try_end_5c
.catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5c} :catch_5d
goto :goto_23
:catch_5d
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_23
const-string v1, "FavoriteFragment"
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_23
:cond_6a
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->e()Ljava/lang/Long;
move-result-object v6
if-eqz v6, :cond_74
invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
move-result-wide v1
:cond_74
iput-wide v1, v5, Lcom/twidroid/fragments/e/e;->c:J
goto :goto_40
:cond_77
move v0, v4
goto :goto_4b
.end method
.method public d()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/c;->b(Z)V
return-void
.end method
.method protected e()V
.registers 5
new-instance v0, Lcom/twidroid/ui/a/am;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/4 v2, 0x0
const/4 v3, 0x1
invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/ui/a/am;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->c(Z)V
iget-object v1, p0, Lcom/twidroid/fragments/e/c;->F:Lcom/twidroid/net/b/f;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->a(Lcom/twidroid/net/b/f;)V
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/c;->setListAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/fragments/e/c;->H:Z
const v0, 0x7f0c0207
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/c;->b(I)V
return-void
.end method