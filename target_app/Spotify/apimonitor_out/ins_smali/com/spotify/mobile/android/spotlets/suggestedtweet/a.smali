.class public final Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;
.super Lcom/spotify/mobile/android/ui/fragments/logic/r;
.source "SourceFile"
.field static final a:Lcom/spotify/mobile/android/util/cz;
.field static final b:Lcom/spotify/mobile/android/util/cz;
.field private Y:Ljava/lang/String;
.field private Z:I
.field private aa:Z
.field private ab:Ljava/lang/String;
.field private ac:Landroid/support/v4/app/z;
.field private final d:Landroid/os/Handler;
.field private e:Lcom/spotify/mobile/android/util/cx;
.field private f:Lcom/spotify/mobile/android/util/be;
.field private g:Z
.field private h:I
.field private i:Ljava/lang/Boolean;
.method static constructor <clinit>()V
.registers 1
const-string v0, "cat_feedback_has_shown_dialog"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->a:Lcom/spotify/mobile/android/util/cz;
const-string v0, "cat_feedback_epoch_track_id"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->b:Lcom/spotify/mobile/android/util/cz;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->d:Landroid/os/Handler;
new-instance v0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$4;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$4;-><init>(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->ac:Landroid/support/v4/app/z;
return-void
.end method
.method private E()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->d:Landroid/os/Handler;
new-instance v1, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$3;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$3;-><init>(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->Z:I
return p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)Lcom/spotify/mobile/android/util/cx;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->e:Lcom/spotify/mobile/android/util/cx;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;Ljava/lang/String;)V
.registers 6
const/4 v3, 0x1
const-string v0, "Tweet text override: %s"
new-array v1, v3, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iput-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->aa:Z
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->ab:Ljava/lang/String;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->d(Z)V
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->Y:Ljava/lang/String;
return-object p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->E()V
return-void
.end method
.method public static c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
.registers 4
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_19
:goto_6
const v0, 0x7f0f03af
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
const v1, 0x7f0f03ae
invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1, p1}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
return-object v0
:cond_19
const v0, 0x7f0f03b0
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object p1
goto :goto_6
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->ab:Ljava/lang/String;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->h:I
return v0
.end method
.method private d(Z)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->i:Ljava/lang/Boolean;
if-nez v0, :cond_16
const/4 v0, 0x1
:goto_5
const-string v1, "Method should only be called once"
invoke-static {v0, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->i:Ljava/lang/Boolean;
if-nez p1, :cond_18
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->E()V
:cond_15
:goto_15
return-void
:cond_16
const/4 v0, 0x0
goto :goto_5
:cond_18
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a015c
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->ac:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->aa:Z
if-nez v0, :cond_15
const-string v0, "https://embed.spotify.com/twitter-feedback/"
invoke-static {v0}, Lcom/spotify/mobile/android/util/l;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/be;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->f:Lcom/spotify/mobile/android/util/be;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string v1, "lang"
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v2
invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->f:Lcom/spotify/mobile/android/util/be;
const-string v2, ""
new-instance v3, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$1;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$1;-><init>(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)V
invoke-interface {v1, v2, v0, v3}, Lcom/spotify/mobile/android/util/be;->a(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bh;)V
goto :goto_15
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->Y:Ljava/lang/String;
return-object v0
.end method
.method protected final D()V
.registers 8
const/4 v6, 0x1
const/4 v5, 0x0
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->R:Lcom/spotify/mobile/android/ui/fragments/logic/j;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/j;->e()Ljava/io/Serializable;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
const-string v1, "Played tracks since epoch track: %d (threshold %d). Tweet text override fetched: %b"
const/4 v2, 0x3
new-array v2, v2, [Ljava/lang/Object;
iget v3, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->Z:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v5
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
const/4 v3, 0x2
iget-boolean v4, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->aa:Z
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
if-lez v0, :cond_4d
iget v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->Z:I
if-lt v1, v0, :cond_4d
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->aa:Z
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
if-eqz v0, :cond_4d
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->g:Z
if-nez v0, :cond_4d
const-string v0, "Queuing dialog"
new-array v1, v5, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V
iput-boolean v6, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->g:Z
:cond_4d
return-void
.end method
.method protected final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->c(Lcom/spotify/mobile/android/ui/fragments/logic/r;)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->h:I
return-void
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 4
invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(IILandroid/content/Intent;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->E()V
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
const/4 v2, 0x0
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(Landroid/os/Bundle;)V
const/4 v0, 0x0
if-eqz p1, :cond_41
const-string v1, "eligibility"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_19
const-string v0, "eligibility"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:cond_19
const-string v1, "queued"
invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->g:Z
const-string v1, "request_code"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
iput v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->h:I
const-string v1, "epoch_track_uri"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->Y:Ljava/lang/String;
const-string v1, "tweet_text_override_fetched"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->aa:Z
const-string v1, "tweet_text_override"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->ab:Ljava/lang/String;
:cond_41
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->e:Lcom/spotify/mobile/android/util/cx;
if-nez v1, :cond_4f
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->e:Lcom/spotify/mobile/android/util/cx;
:cond_4f
if-eqz v0, :cond_59
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->d(Z)V
:goto_58
return-void
:cond_59
new-instance v0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/b;
invoke-direct {v0, p0, v2}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/b;-><init>(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;B)V
new-array v1, v2, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_58
.end method
.method public final c()V
.registers 3
new-instance v0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$2;-><init>(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->d(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->i:Ljava/lang/Boolean;
if-eqz v0, :cond_12
const-string v0, "eligibility"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->i:Ljava/lang/Boolean;
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
:cond_12
const-string v0, "queued"
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->g:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "request_code"
iget v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->h:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "epoch_track_uri"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->Y:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "tweet_text_override_fetched"
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->aa:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "tweet_text_override"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->ab:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method