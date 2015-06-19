.class final Lcom/spotify/mobile/android/spotlets/user/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/user/h;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/spotify/mobile/android/spotlets/user/h;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/user/h;Lcom/spotify/mobile/android/spotlets/user/ProfileModel;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/h$1;->c:Lcom/spotify/mobile/android/spotlets/user/h;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/user/h$1;->a:Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/user/h$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-class v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/h$1;->a:Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getUri()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/h$1;->b:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a(Ljava/lang/String;Z)V

    return-void
.end method
