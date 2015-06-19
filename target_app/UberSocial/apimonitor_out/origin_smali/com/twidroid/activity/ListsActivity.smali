.class public Lcom/twidroid/activity/ListsActivity;
.super Lcom/twidroid/activity/UberSocialBaseActivity;
.source "SourceFile"


# static fields
.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/twidroid/activity/ListsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lists.fragment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/twidroid/activity/ListsActivity;->b:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const v2, 0x7f03003c

    invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/ListsActivity;->setContentView(Landroid/view/View;)V

    if-nez p1, :cond_31

    new-instance v0, Lcom/twidroid/fragments/e/n;

    iget-object v1, p0, Lcom/twidroid/activity/ListsActivity;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twidroid/fragments/e/n;-><init>(Lcom/twidroid/model/twitter/c;)V

    invoke-virtual {p0}, Lcom/twidroid/activity/ListsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_31
    return-void
.end method
