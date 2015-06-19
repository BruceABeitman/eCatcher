.class public Lcom/twidroid/fragments/e/g;
.super Lcom/twidroid/fragments/base/e;
.source "SourceFile"
.field public static final G:Ljava/lang/String; = "MentionsTimeline"
.field public static final H:Ljava/lang/String; = null
.field protected static final I:I = 0x466
.field public static final K:I = 0x849
.field private static final L:Ljava/lang/String; = "HomeTimeline"
.field  J:Z
.field private M:Lcom/twidroid/fragments/e/h;
.field private N:Lcom/twidroid/a/a;
.field private O:Z
.field private P:Ljava/util/ArrayList;
.field private Q:Lcom/twidroid/fragments/e/j;
.field private R:Landroid/content/BroadcastReceiver;
.field private S:Lcom/twidroid/net/a/c/a/j;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-class v1, Lcom/twidroid/fragments/e/g;
invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".MUTE"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/fragments/e/g;->H:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x1
invoke-direct {p0}, Lcom/twidroid/fragments/base/e;-><init>()V
sget-object v0, Lcom/twidroid/fragments/e/h;->c:Lcom/twidroid/fragments/e/h;
iput-object v0, p0, Lcom/twidroid/fragments/e/g;->M:Lcom/twidroid/fragments/e/h;
iput-object v2, p0, Lcom/twidroid/fragments/e/g;->N:Lcom/twidroid/a/a;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/fragments/e/g;->O:Z
new-instance v0, Lcom/twidroid/fragments/e/j;
invoke-direct {v0, p0, v2}, Lcom/twidroid/fragments/e/j;-><init>(Lcom/twidroid/fragments/e/g;Lcom/twidroid/fragments/e/g$1;)V
iput-object v0, p0, Lcom/twidroid/fragments/e/g;->Q:Lcom/twidroid/fragments/e/j;
new-instance v0, Lcom/twidroid/fragments/e/g$4;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/e/g$4;-><init>(Lcom/twidroid/fragments/e/g;)V
iput-object v0, p0, Lcom/twidroid/fragments/e/g;->R:Landroid/content/BroadcastReceiver;
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/e/g;->setHasOptionsMenu(Z)V
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/e/g;->setRetainInstance(Z)V
return-void
.end method
.method public constructor <init>(Lcom/twidroid/model/twitter/c;)V
.registers 5
const/4 v2, 0x0
const/4 v1, 0x1
invoke-direct {p0}, Lcom/twidroid/fragments/base/e;-><init>()V
sget-object v0, Lcom/twidroid/fragments/e/h;->c:Lcom/twidroid/fragments/e/h;
iput-object v0, p0, Lcom/twidroid/fragments/e/g;->M:Lcom/twidroid/fragments/e/h;
iput-object v2, p0, Lcom/twidroid/fragments/e/g;->N:Lcom/twidroid/a/a;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/fragments/e/g;->O:Z
new-instance v0, Lcom/twidroid/fragments/e/j;
invoke-direct {v0, p0, v2}, Lcom/twidroid/fragments/e/j;-><init>(Lcom/twidroid/fragments/e/g;Lcom/twidroid/fragments/e/g$1;)V
iput-object v0, p0, Lcom/twidroid/fragments/e/g;->Q:Lcom/twidroid/fragments/e/j;
new-instance v0, Lcom/twidroid/fragments/e/g$4;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/e/g$4;-><init>(Lcom/twidroid/fragments/e/g;)V
iput-object v0, p0, Lcom/twidroid/fragments/e/g;->R:Landroid/content/BroadcastReceiver;
iput-object p1, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/e/g;->setHasOptionsMenu(Z)V
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/e/g;->setRetainInstance(Z)V
return-void
.end method
.method static synthetic A(Lcom/twidroid/fragments/e/g;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
return-object v0
.end method
.method static synthetic B(Lcom/twidroid/fragments/e/g;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
return-object v0
.end method
.method static synthetic C(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic D(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method static synthetic E(Lcom/twidroid/fragments/e/g;)V
.registers 1
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->k()V
return-void
.end method
.method static synthetic F(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic G(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic H(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic I(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic J(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic K(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic L(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method static synthetic M(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic N(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic O(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic P(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic Q(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic R(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic S(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic T(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic U(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic V(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic W(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic X(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic Y(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic Z(Lcom/twidroid/fragments/e/g;)V
.registers 1
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->k()V
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/g;J)J
.registers 3
iput-wide p1, p0, Lcom/twidroid/fragments/e/g;->p:J
return-wide p1
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/g;Ljava/lang/Runnable;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/g;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/g;Ljava/util/List;Z)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/twidroid/fragments/e/g;->a(Ljava/util/List;Z)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/g;Z)V
.registers 2
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/g;->a(Z)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/g;ZLcom/twidroid/model/twitter/c;)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/g;->a(ZLcom/twidroid/model/twitter/c;)V
return-void
.end method
.method private a(Ljava/util/List;Z)V
.registers 14
const/4 v5, 0x0
if-eqz p1, :cond_9
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_a
:goto_9
:cond_9
return-void
:cond_a
invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/model/twitter/CommunicationEntity;
instance-of v2, v1, Lcom/twidroid/model/TimelineGap;
if-eqz v2, :cond_7e
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v1
add-int/lit8 v1, v1, -0x2
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/model/twitter/Tweet;
move-object v3, v1
:goto_2d
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->P:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_33
:cond_33
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_9
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/model/twitter/DirectMessage;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/DirectMessage;->l()J
move-result-wide v6
invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->l()J
move-result-wide v9
cmp-long v2, v6, v9
if-gtz v2, :cond_a4
invoke-virtual {v1}, Lcom/twidroid/model/twitter/DirectMessage;->l()J
move-result-wide v6
invoke-virtual {v3}, Lcom/twidroid/model/twitter/Tweet;->l()J
move-result-wide v9
cmp-long v2, v6, v9
if-ltz v2, :cond_a4
move v4, v5
:goto_58
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v2
add-int/lit8 v2, v2, -0x1
if-ge v4, v2, :cond_33
invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
instance-of v2, v2, Lcom/twidroid/model/twitter/Tweet;
if-eqz v2, :cond_82
invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/Tweet;->l()J
move-result-wide v6
:goto_72
invoke-virtual {v1}, Lcom/twidroid/model/twitter/DirectMessage;->l()J
move-result-wide v9
cmp-long v2, v6, v9
if-gtz v2, :cond_a0
invoke-interface {p1, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V
goto :goto_33
:cond_7e
check-cast v1, Lcom/twidroid/model/twitter/Tweet;
move-object v3, v1
goto :goto_2d
:cond_82
invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
instance-of v2, v2, Lcom/twidroid/model/twitter/DirectMessage;
if-eqz v2, :cond_95
invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/twidroid/model/twitter/DirectMessage;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/DirectMessage;->l()J
move-result-wide v6
goto :goto_72
:cond_95
invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/twidroid/model/TimelineGap;
invoke-virtual {v2}, Lcom/twidroid/model/TimelineGap;->l()J
move-result-wide v6
goto :goto_72
:cond_a0
add-int/lit8 v2, v4, 0x1
move v4, v2
goto :goto_58
:cond_a4
invoke-virtual {v1}, Lcom/twidroid/model/twitter/DirectMessage;->l()J
move-result-wide v6
invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->l()J
move-result-wide v9
cmp-long v2, v6, v9
if-lez v2, :cond_33
if-eqz p2, :cond_e9
iget-object v2, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
iget-object v4, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v4
add-int/lit8 v4, v4, -0x1
invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
instance-of v4, v2, Lcom/twidroid/model/twitter/Tweet;
if-eqz v4, :cond_d7
check-cast v2, Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/Tweet;->l()J
move-result-wide v6
:goto_ca
invoke-virtual {v1}, Lcom/twidroid/model/twitter/DirectMessage;->l()J
move-result-wide v9
cmp-long v2, v6, v9
if-lez v2, :cond_33
invoke-interface {p1, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V
goto/16 :goto_9
:cond_d7
instance-of v4, v2, Lcom/twidroid/model/twitter/DirectMessage;
if-eqz v4, :cond_e2
check-cast v2, Lcom/twidroid/model/twitter/DirectMessage;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/DirectMessage;->l()J
move-result-wide v6
goto :goto_ca
:cond_e2
check-cast v2, Lcom/twidroid/model/TimelineGap;
invoke-virtual {v2}, Lcom/twidroid/model/TimelineGap;->l()J
move-result-wide v6
goto :goto_ca
:cond_e9
invoke-interface {p1, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V
goto/16 :goto_33
.end method
.method private a(Lcom/twidroid/model/twitter/CommunicationEntity;)Z
.registers 3
invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->r()Ljava/util/List;
instance-of v0, p1, Lcom/twidroid/model/twitter/Tweet;
if-eqz v0, :cond_16
check-cast p1, Lcom/twidroid/model/twitter/Tweet;
invoke-direct {p0, p1}, Lcom/twidroid/fragments/e/g;->c(Lcom/twidroid/model/twitter/Tweet;)Z
move-result v0
:goto_15
return v0
:cond_16
instance-of v0, p1, Lcom/twidroid/model/twitter/DirectMessage;
if-eqz v0, :cond_21
check-cast p1, Lcom/twidroid/model/twitter/DirectMessage;
invoke-static {p1}, Lcom/twidroid/fragments/e/g;->a(Lcom/twidroid/model/twitter/DirectMessage;)Z
move-result v0
goto :goto_15
:cond_21
const/4 v0, 0x0
goto :goto_15
.end method
.method public static a(Lcom/twidroid/model/twitter/DirectMessage;)Z
.registers 8
const/4 v1, 0x1
invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->r()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_11
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_29
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
iget-wide v3, p0, Lcom/twidroid/model/twitter/DirectMessage;->C:J
iget-wide v5, v0, Lcom/twidroid/model/twitter/User;->b:J
cmp-long v0, v3, v5
if-nez v0, :cond_11
iput-boolean v1, p0, Lcom/twidroid/model/twitter/DirectMessage;->F:Z
move v0, v1
:goto_28
return v0
:cond_29
const/4 v0, 0x0
goto :goto_28
.end method
.method static synthetic aa(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic ab(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method private ab()V
.registers 3
const-string v0, "HomeTimeline"
const-string v1, "Cancelling task to prevent unnecessary update"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->N:Lcom/twidroid/a/a;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->N:Lcom/twidroid/a/a;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/twidroid/a/a;->b(Z)Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/fragments/e/g;->N:Lcom/twidroid/a/a;
:cond_14
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/fragments/e/g;->l:Z
return-void
.end method
.method static synthetic ac(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method private ac()V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->k()Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/e/g;->P:Ljava/util/ArrayList;
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->P:Ljava/util/ArrayList;
if-nez v0, :cond_18
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/fragments/e/g;->P:Ljava/util/ArrayList;
:goto_17
return-void
:cond_18
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->P:Ljava/util/ArrayList;
new-instance v1, Lcom/twidroid/fragments/e/g$3;
invoke-direct {v1, p0}, Lcom/twidroid/fragments/e/g$3;-><init>(Lcom/twidroid/fragments/e/g;)V
invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
goto :goto_17
.end method
.method static synthetic ad(Lcom/twidroid/fragments/e/g;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->k:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic ae(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method static synthetic af(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic ag(Lcom/twidroid/fragments/e/g;)V
.registers 1
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->k()V
return-void
.end method
.method static synthetic ah(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic ai(Lcom/twidroid/fragments/e/g;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->k:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic b(Lcom/twidroid/fragments/e/g;J)J
.registers 3
iput-wide p1, p0, Lcom/twidroid/fragments/e/g;->p:J
return-wide p1
.end method
.method static synthetic b(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic b(Lcom/twidroid/fragments/e/g;ZLcom/twidroid/model/twitter/c;)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/g;->a(ZLcom/twidroid/model/twitter/c;)V
return-void
.end method
.method static synthetic b(Lcom/twidroid/fragments/e/g;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/e/g;->l:Z
return p1
.end method
.method static synthetic c(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic c(Lcom/twidroid/fragments/e/g;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/e/g;->l:Z
return p1
.end method
.method private c(Lcom/twidroid/model/twitter/Tweet;)Z
.registers 9
const/4 v1, 0x1
invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->r()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_11
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_31
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
iget-wide v3, p1, Lcom/twidroid/model/twitter/Tweet;->C:J
iget-wide v5, v0, Lcom/twidroid/model/twitter/User;->b:J
cmp-long v3, v3, v5
if-eqz v3, :cond_2d
iget-wide v3, p1, Lcom/twidroid/model/twitter/Tweet;->ag:J
iget-wide v5, v0, Lcom/twidroid/model/twitter/User;->b:J
cmp-long v0, v3, v5
if-nez v0, :cond_11
:cond_2d
iput-boolean v1, p1, Lcom/twidroid/model/twitter/Tweet;->F:Z
move v0, v1
:goto_30
return v0
:cond_31
const/4 v0, 0x0
goto :goto_30
.end method
.method static synthetic d(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic d(Lcom/twidroid/fragments/e/g;Z)V
.registers 2
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/g;->a(Z)V
return-void
.end method
.method static synthetic e(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic e(Lcom/twidroid/fragments/e/g;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/e/g;->A:Z
return p1
.end method
.method static synthetic f(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method static synthetic f(Lcom/twidroid/fragments/e/g;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/e/g;->l:Z
return p1
.end method
.method static synthetic g(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic g(Lcom/twidroid/fragments/e/g;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/e/g;->l:Z
return p1
.end method
.method static synthetic h(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic h(Lcom/twidroid/fragments/e/g;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/e/g;->O:Z
return p1
.end method
.method static synthetic i(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method static synthetic i(Lcom/twidroid/fragments/e/g;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/e/g;->l:Z
return p1
.end method
.method static synthetic j(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic k(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic l(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic m(Lcom/twidroid/fragments/e/g;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
return-object v0
.end method
.method static synthetic n(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic o(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic p(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic q(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic r(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic s(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic t(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic u(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic v(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic w(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method static synthetic x(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic y(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic z(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method public S()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->u:Lcom/twidroid/net/c/a/f;
const v1, 0x7f0c0020
invoke-interface {v0, v1}, Lcom/twidroid/net/c/a/f;->e(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public T()V
.registers 9
const/4 v7, 0x1
const-string v0, "HomeTimeline"
const-string v1, "Marking all Tweets as read"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
if-nez v0, :cond_f
:goto_e
return-void
:cond_f
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v4
const/4 v0, 0x0
move v1, v0
:goto_23
if-ge v1, v4, :cond_7b
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/twidroid/model/TimelineGap;
if-eqz v0, :cond_35
:goto_31
:cond_31
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_23
:cond_35
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/twidroid/model/twitter/Tweet;
if-eqz v0, :cond_5d
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
if-eqz v0, :cond_31
iget-boolean v5, v0, Lcom/twidroid/model/twitter/Tweet;->E:Z
if-nez v5, :cond_5a
iget-wide v5, v0, Lcom/twidroid/model/twitter/Tweet;->x:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_5a
iput-boolean v7, v0, Lcom/twidroid/model/twitter/Tweet;->E:Z
goto :goto_31
:cond_5d
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;
if-eqz v0, :cond_31
iget-boolean v5, v0, Lcom/twidroid/model/twitter/DirectMessage;->E:Z
if-nez v5, :cond_78
invoke-virtual {v0}, Lcom/twidroid/model/twitter/DirectMessage;->m()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_78
iput-boolean v7, v0, Lcom/twidroid/model/twitter/DirectMessage;->E:Z
goto :goto_31
:cond_7b
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/a/am;
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->x:Lcom/twidroid/b/a/b;
invoke-virtual {v0, v2}, Lcom/twidroid/b/a/b;->b(Ljava/util/ArrayList;)Z
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->x:Lcom/twidroid/b/a/b;
invoke-virtual {v0, v3}, Lcom/twidroid/b/a/b;->c(Ljava/util/ArrayList;)Z
goto :goto_e
.end method
.method public Z()V
.registers 3
new-instance v0, Lcom/twidroid/fragments/e/g$1;
invoke-direct {v0, p0, p0}, Lcom/twidroid/fragments/e/g$1;-><init>(Lcom/twidroid/fragments/e/g;Lcom/twidroid/fragments/e/g;)V
iput-object v0, p0, Lcom/twidroid/fragments/e/g;->N:Lcom/twidroid/a/a;
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->N:Lcom/twidroid/a/a;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/a/a;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
.end method
.method public a(JJ)Ljava/lang/String;
.registers 7
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->m()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/ubermedia/model/a;Lcom/twidroid/model/TimelineGap;)V
.registers 5
new-instance v0, Lcom/twidroid/fragments/e/g$5;
invoke-direct {v0, p0, p0, p1, p2}, Lcom/twidroid/fragments/e/g$5;-><init>(Lcom/twidroid/fragments/e/g;Lcom/twidroid/fragments/e/g;Lcom/ubermedia/model/a;Lcom/twidroid/model/TimelineGap;)V
iput-object v0, p0, Lcom/twidroid/fragments/e/g;->N:Lcom/twidroid/a/a;
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->N:Lcom/twidroid/a/a;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/a/a;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
.end method
.method public aa()V
.registers 3
const-string v0, "HomeTimeline"
const-string v1, "updating...."
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/fragments/e/g;->m:J
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->w()V
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
if-nez v0, :cond_15
:goto_14
:cond_14
return-void
:cond_15
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/model/twitter/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-eqz v0, :cond_14
iget-boolean v0, p0, Lcom/twidroid/fragments/e/g;->l:Z
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->N:Lcom/twidroid/a/a;
if-eqz v0, :cond_39
const-string v0, "HomeTimeline"
const-string v1, "Be patient, it\'s a mobile phone connection and no Gigabit Ethernet!!"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_14
:cond_39
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/fragments/e/g;->l:Z
new-instance v0, Lcom/twidroid/fragments/e/g$2;
invoke-direct {v0, p0, p0}, Lcom/twidroid/fragments/e/g$2;-><init>(Lcom/twidroid/fragments/e/g;Lcom/twidroid/fragments/e/g;)V
iput-object v0, p0, Lcom/twidroid/fragments/e/g;->N:Lcom/twidroid/a/a;
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->N:Lcom/twidroid/a/a;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/a/a;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_14
.end method
.method protected b()V
.registers 11
const/4 v2, -0x1
const/4 v8, 0x0
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->w()V
iget-boolean v0, p0, Lcom/twidroid/fragments/e/g;->l:Z
if-nez v0, :cond_d
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
if-nez v0, :cond_15
:cond_d
const-string v0, "HomeTimeline"
const-string v1, "::showContent - still updating - returning"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_14
return-void
:cond_15
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
if-nez v0, :cond_25
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccount()Lcom/twidroid/model/twitter/c;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
:cond_25
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->cb()Z
move-result v0
if-eqz v0, :cond_34
invoke-direct {p0}, Lcom/twidroid/fragments/e/g;->ac()V
:cond_34
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->d()Z
move-result v0
if-nez v0, :cond_c0
:cond_40
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0, v2, v2}, Lcom/twidroid/b/a/b;->a(II)Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
:goto_4c
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
if-nez v0, :cond_d4
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:goto_55
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v9
:cond_59
:goto_59
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_111
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
move-object v4, v0
check-cast v4, Lcom/ubermedia/model/a;
const-string v0, "HomeTimeline"
const-string v1, "Checking for gap in timeline"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
if-eqz v0, :cond_59
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_59
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
iget-object v2, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/model/twitter/CommunicationEntity;
invoke-virtual {v4}, Lcom/ubermedia/model/a;->a()J
move-result-wide v2
iget-wide v5, v1, Lcom/twidroid/model/twitter/CommunicationEntity;->x:J
cmp-long v1, v2, v5
if-lez v1, :cond_e3
invoke-virtual {v4}, Lcom/ubermedia/model/a;->a()J
move-result-wide v1
iget-wide v5, v0, Lcom/twidroid/model/twitter/CommunicationEntity;->x:J
cmp-long v0, v1, v5
if-gtz v0, :cond_e3
const/4 v0, 0x1
:goto_a6
if-nez v0, :cond_e5
const-string v0, "HomeTimeline"
const-string v1, "Gap is no longer valid. Deleting."
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->x:Lcom/twidroid/b/a/b;
invoke-virtual {v4}, Lcom/ubermedia/model/a;->e()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
int-to-long v2, v2
invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/b/a/b;->d(Ljava/lang/String;J)V
goto :goto_59
:cond_c0
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->a(II)Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
goto/16 :goto_4c
:cond_d4
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->x:Lcom/twidroid/b/a/b;
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->p(J)Ljava/util/ArrayList;
move-result-object v0
goto/16 :goto_55
:cond_e3
move v0, v8
goto :goto_a6
:cond_e5
const-string v0, "HomeTimeline"
const-string v1, "Gap is present and valid, adding it to the list"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/twidroid/model/TimelineGap;
const-wide/16 v1, -0x1
invoke-virtual {v4}, Lcom/ubermedia/model/a;->e()Ljava/lang/String;
move-result-object v3
invoke-virtual {v4}, Lcom/ubermedia/model/a;->d()J
move-result-wide v4
const-wide/16 v6, 0x1
add-long/2addr v4, v6
iget-object v6, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v6}, Lcom/twidroid/model/twitter/c;->p()I
move-result v6
int-to-long v6, v6
invoke-direct/range {v0 .. v7}, Lcom/twidroid/model/TimelineGap;-><init>(JLjava/lang/String;JJ)V
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
goto/16 :goto_59
:cond_111
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
if-nez v0, :cond_11a
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->e()V
:cond_11a
:try_start_11a
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/twidroid/model/twitter/Tweet;
if-eqz v0, :cond_174
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/twidroid/model/twitter/Tweet;
if-eqz v0, :cond_174
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
iget-boolean v0, v0, Lcom/twidroid/model/twitter/Tweet;->ax:Z
if-eqz v0, :cond_174
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
iget-boolean v0, v0, Lcom/twidroid/model/twitter/Tweet;->ax:Z
if-eqz v0, :cond_174
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->c(Ljava/util/List;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->N()V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->d()V
:try_end_16a
.catch Ljava/lang/Exception; {:try_start_11a .. :try_end_16a} :catch_16c
goto/16 :goto_14
:catch_16c
move-exception v0
const-string v1, "HomeTimeline"
const-string v2, "Empty tweets list or else"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_174
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_18d
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->c(Ljava/util/List;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->N()V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->d()V
goto/16 :goto_14
:cond_18d
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->c:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->cb()Z
move-result v0
if-eqz v0, :cond_1a5
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
invoke-direct {p0, v0, v8}, Lcom/twidroid/fragments/e/g;->a(Ljava/util/List;Z)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V
:cond_1a5
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->b:Ljava/util/List;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->c(Ljava/util/List;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->c()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Lcom/twidroid/model/twitter/Tweet;
if-eqz v1, :cond_1da
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
if-eqz v1, :cond_1da
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->x:Lcom/twidroid/b/a/b;
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->m()J
move-result-wide v2
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
int-to-long v4, v0
invoke-virtual {v1, v2, v3, v4, v5}, Lcom/twidroid/b/a/b;->d(JJ)V
:cond_1da
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
if-eqz v0, :cond_1e3
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
:cond_1e3
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->D()V
goto/16 :goto_14
.end method
.method protected b(Lcom/twidroid/model/twitter/c;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
if-ne v0, v1, :cond_18
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->b(Lcom/twidroid/model/twitter/c;)V
sget-object v0, Lcom/twidroid/fragments/e/h;->c:Lcom/twidroid/fragments/e/h;
iput-object v0, p0, Lcom/twidroid/fragments/e/g;->M:Lcom/twidroid/fragments/e/h;
:cond_17
:goto_17
return-void
:cond_18
invoke-direct {p0}, Lcom/twidroid/fragments/e/g;->ab()V
const/4 v0, 0x1
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
if-eqz v1, :cond_30
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1, p1}, Lcom/twidroid/model/twitter/c;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_30
const/4 v0, 0x0
const-string v1, "HomeTimeline"
const-string v2, "No need to clear data since it is the same account"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_30
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->b(Lcom/twidroid/model/twitter/c;)V
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->x:Lcom/twidroid/b/a/b;
if-eqz v1, :cond_17
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v1
instance-of v1, v1, Lcom/twidroid/ui/a/am;
if-eqz v1, :cond_48
if-eqz v0, :cond_48
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->h()V
:cond_48
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->b()V
goto :goto_17
.end method
.method protected b(Ljava/lang/Object;)V
.registers 6
instance-of v0, p1, Lcom/twidroid/model/TimelineGap;
if-eqz v0, :cond_35
check-cast p1, Lcom/twidroid/model/TimelineGap;
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->x:Lcom/twidroid/b/a/b;
invoke-virtual {p1}, Lcom/twidroid/model/TimelineGap;->c()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
int-to-long v2, v2
invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/b/a/b;->c(Ljava/lang/String;J)Lcom/ubermedia/model/a;
move-result-object v0
if-eqz v0, :cond_34
invoke-virtual {p1}, Lcom/twidroid/model/TimelineGap;->b()Z
move-result v1
if-nez v1, :cond_34
const/4 v1, 0x1
invoke-virtual {p1, v1}, Lcom/twidroid/model/TimelineGap;->a(Z)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V
const-string v1, "HomeTimeline"
const-string v2, "Loading tweets into gap"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, v0, p1}, Lcom/twidroid/fragments/e/g;->a(Lcom/ubermedia/model/a;Lcom/twidroid/model/TimelineGap;)V
:cond_34
:goto_34
return-void
:cond_35
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->b(Ljava/lang/Object;)V
goto :goto_34
.end method
.method public b(Z)V
.registers 4
const-string v0, "HomeTimeline"
const-string v1, "::onRefresh"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/g;->d(Z)Z
move-result v0
if-eqz v0, :cond_e
:goto_d
return-void
:cond_e
if-eqz p1, :cond_14
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->Z()V
goto :goto_d
:cond_14
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->aa()V
goto :goto_d
.end method
.method protected c()V
.registers 3
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/d/v;->q(Landroid/content/Context;)I
move-result v0
if-lez v0, :cond_6
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->w:Lcom/twidroid/d/v;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/d/v;->i(Landroid/content/Context;)Z
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->x:Lcom/twidroid/b/a/b;
const-string v1, "MentionsTimeline"
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->k(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->k()V
goto :goto_6
.end method
.method public d()V
.registers 3
const-string v0, "HomeTimeline"
const-string v1, "::updateContent"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/g;->b(Z)V
return-void
.end method
.method protected d(Lcom/twidroid/model/twitter/c;)V
.registers 3
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->d(Lcom/twidroid/model/twitter/c;)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/g;->b(Z)V
return-void
.end method
.method protected e()V
.registers 5
const/4 v3, 0x1
new-instance v0, Lcom/twidroid/ui/a/am;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/4 v2, 0x0
invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/ui/a/am;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V
invoke-virtual {v0, v3}, Lcom/twidroid/ui/a/am;->c(Z)V
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->F:Lcom/twidroid/net/b/f;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->a(Lcom/twidroid/net/b/f;)V
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/g;->setListAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method protected e(Z)V
.registers 3
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->e(Z)V
if-eqz p1, :cond_b
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->S:Lcom/twidroid/net/a/c/a/j;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/g;->a(Lcom/twidroid/net/a/c/a/j;)V
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->S:Lcom/twidroid/net/a/c/a/j;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/g;->b(Lcom/twidroid/net/a/c/a/j;)V
goto :goto_a
.end method
.method public l()I
.registers 2
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/d/v;->q(Landroid/content/Context;)I
move-result v0
goto :goto_7
.end method
.method protected m()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
if-nez v0, :cond_e
const-string v0, "HomeTimeline"
const-string v1, "TPOS:: getSaveTimelinePositionTag account is NULL!!!!!!!!!!"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "HomeTimeline"
:goto_d
return-object v0
:cond_e
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "HomeTimeline"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_d
.end method
.method protected n()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 6
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->onAttach(Landroid/app/Activity;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->R:Landroid/content/BroadcastReceiver;
new-instance v1, Landroid/content/IntentFilter;
sget-object v2, Lcom/twidroid/fragments/e/g;->H:Ljava/lang/String;
invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->Q:Lcom/twidroid/fragments/e/j;
new-instance v2, Landroid/content/IntentFilter;
sget-object v3, Lcom/twidroid/TwidroidClient;->l:Ljava/lang/String;
invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/fragments/e/g; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->onCreate(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->w:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->D()Z
new-instance v0, Lcom/twidroid/fragments/e/g$6;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/e/g$6;-><init>(Lcom/twidroid/fragments/e/g;)V
iput-object v0, p0, Lcom/twidroid/fragments/e/g;->S:Lcom/twidroid/net/a/c/a/j;
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->S:Lcom/twidroid/net/a/c/a/j;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/g;->a(Lcom/twidroid/net/a/c/a/j;)V
const-string v1, " - Lcom/twidroid/fragments/e/g; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/twidroid/fragments/e/g; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/e;->onDestroy()V
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->S:Lcom/twidroid/net/a/c/a/j;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/g;->b(Lcom/twidroid/net/a/c/a/j;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/fragments/e/g;->S:Lcom/twidroid/net/a/c/a/j;
const-string v1, " - Lcom/twidroid/fragments/e/g; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDetach()V
.registers 3
invoke-super {p0}, Lcom/twidroid/fragments/base/e;->onDetach()V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->R:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/g;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/g;->Q:Lcom/twidroid/fragments/e/j;
invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/twidroid/fragments/e/g; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/e;->onStop()V
const-string v1, " - Lcom/twidroid/fragments/e/g; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
const v0, 0x7f0c0207
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/g;->b(I)V
return-void
.end method
.method protected p()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected t()Z
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/e/g;->w:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->bZ()Ljava/lang/String;
move-result-object v0
const-string v1, "none"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x0
:goto_f
return v0
:cond_10
const/4 v0, 0x1
goto :goto_f
.end method
.method public x()Z
.registers 2
const/4 v0, 0x1
return v0
.end method