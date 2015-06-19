.class public final Lcom/spotify/mobile/android/ui/fragments/logic/v;
.super Lcom/spotify/mobile/android/ui/fragments/logic/r;
.source "SourceFile"
.field private static final a:[Ljava/lang/String;
.field private b:Landroid/content/Intent;
.field private d:I
.field private e:Z
.field private f:Landroid/support/v4/app/z;
.field private g:Landroid/content/BroadcastReceiver;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "permissions"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->a:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->b:Landroid/content/Intent;
const/4 v0, 0x0
iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->d:I
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/v$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/v$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/logic/v;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->f:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/v$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/v$2;-><init>(Lcom/spotify/mobile/android/ui/fragments/logic/v;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->g:Landroid/content/BroadcastReceiver;
return-void
.end method
.method static synthetic D()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->a:[Ljava/lang/String;
return-object v0
.end method
.method private E()V
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->e:Z
if-eqz v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->e:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V
goto :goto_4
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/logic/v;Landroid/content/Intent;)Landroid/content/Intent;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->b:Landroid/content/Intent;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/logic/v;)V
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/v;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a01b3
invoke-virtual {v0, v1}, Landroid/support/v4/app/y;->a(I)V
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/logic/v;)Landroid/content/Intent;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->b:Landroid/content/Intent;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/logic/v;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/v;->E()V
return-void
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/logic/v;)V
.registers 5
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/v;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a01b3
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->f:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-void
.end method
.method protected final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->c(Lcom/spotify/mobile/android/ui/fragments/logic/r;)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->d:I
return-void
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 5
invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(IILandroid/content/Intent;)V
const/4 v0, -0x1
if-eq p2, v0, :cond_c
const/4 v0, 0x2
if-eq p2, v0, :cond_c
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/v;->E()V
:cond_c
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(Landroid/os/Bundle;)V
if-eqz p1, :cond_d
const-string v0, "request_code"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->d:I
:cond_d
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/DialogPresenter;)V
.registers 3
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(Lcom/spotify/mobile/android/util/DialogPresenter;)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->e:Z
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V
:cond_c
return-void
.end method
.method public final c()V
.registers 4
const/4 v2, 0x0
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->d:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/Object;Ljava/lang/Object;)V
iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->e:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->b:Landroid/content/Intent;
iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->d:I
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/v;->a(Landroid/content/Intent;I)V
return-void
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->d(Landroid/os/Bundle;)V
const-string v0, "request_code"
iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->d:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-void
.end method
.method public final x()V
.registers 5
invoke-super {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->x()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/v;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->g:Landroid/content/BroadcastReceiver;
const-string v2, "com.spotify.mobile.android.service.broadcast.session.SOCIAL_ERROR"
new-instance v3, Landroid/content/IntentFilter;
invoke-direct {v3, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
const-string v2, "android.intent.category.DEFAULT"
invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V
invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
return-void
.end method
.method public final y()V
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/v;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v;->g:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
invoke-super {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->y()V
return-void
.end method