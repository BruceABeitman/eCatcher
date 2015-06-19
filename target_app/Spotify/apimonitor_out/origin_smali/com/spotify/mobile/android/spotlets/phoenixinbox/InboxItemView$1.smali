.class final Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView$1;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView$1;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->a(Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView$1;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView$1;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView$1;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->a(Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView$1;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;

    invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->b(Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2b
    return-void
.end method
