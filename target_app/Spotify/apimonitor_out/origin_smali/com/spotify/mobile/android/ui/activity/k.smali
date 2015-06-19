.class public final Lcom/spotify/mobile/android/ui/activity/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Intent;

.field private final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/k;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/k;->a:Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/k;->a:Landroid/content/Intent;

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/ui/activity/ShareActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/k;->b:Landroid/content/Intent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/k;->b:Landroid/content/Intent;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/k;->b:Landroid/content/Intent;

    const-string v1, "intent"

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/k;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/k;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/k;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/k;->b:Landroid/content/Intent;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public final a(Z)Lcom/spotify/mobile/android/ui/activity/k;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/k;->b:Landroid/content/Intent;

    const-string v1, "include_share_to_spotify"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/k;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/k;->b:Landroid/content/Intent;

    const-string v1, "subtitle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/k;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/k;->b:Landroid/content/Intent;

    const-string v1, "friend_to_friend_email_specific_subject"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/k;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/k;->b:Landroid/content/Intent;

    const-string v1, "friend_to_friend_email_specific_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/k;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/k;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/k;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/k;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method
