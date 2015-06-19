.class Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment$1;
.super Lcom/twidroid/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->a(Ljava/lang/String;JLcom/twidroid/c/d;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/d;

.field final synthetic b:Ljava/lang/String;

.field final synthetic e:J

.field final synthetic f:Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;Landroid/app/Activity;Lcom/twidroid/c/d;Ljava/lang/String;J)V
    .registers 7

    iput-object p1, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment$1;->f:Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    iput-object p3, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment$1;->a:Lcom/twidroid/c/d;

    iput-object p4, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment$1;->b:Ljava/lang/String;

    iput-wide p5, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment$1;->e:J

    invoke-direct {p0, p2}, Lcom/twidroid/c/c;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(I)V
    .registers 7

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment$1;->f:Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    invoke-static {v0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->b(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment$1;->f:Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    invoke-static {v1}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->b(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/UberSocialApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/twidroid/b/a/b;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->c(I)Z

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment$1;->a:Lcom/twidroid/c/d;

    invoke-interface {v0}, Lcom/twidroid/c/d;->a()V

    new-instance v0, Lcom/twidroid/fragments/whatshotfragments/h;

    iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment$1;->f:Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    invoke-direct {v0, v1}, Lcom/twidroid/fragments/whatshotfragments/h;-><init>(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment$1;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment$1;->e:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/whatshotfragments/h;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment$1;->dismiss()V

    return-void
.end method
