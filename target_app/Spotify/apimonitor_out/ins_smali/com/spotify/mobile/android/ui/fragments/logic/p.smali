.class public final Lcom/spotify/mobile/android/ui/fragments/logic/p;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.field private static final a:Ljava/util/LinkedHashSet;
.field private static b:Z
.field private static c:Z
.field private static d:Z
.field private static e:Z
.field private static f:Ljava/util/Date;
.field private static g:Z
.field private static h:Z
.field private Y:Z
.field private Z:Landroid/support/v4/app/z;
.field private aa:Landroid/support/v4/app/z;
.field private ab:Ljava/lang/Runnable;
.field private i:Landroid/os/Handler;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/LinkedHashSet;
invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->a:Ljava/util/LinkedHashSet;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/p$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/p$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/logic/p;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->Z:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/p$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/p$2;-><init>(Lcom/spotify/mobile/android/ui/fragments/logic/p;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->aa:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/p$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/p$3;-><init>(Lcom/spotify/mobile/android/ui/fragments/logic/p;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->ab:Ljava/lang/Runnable;
return-void
.end method
.method static synthetic a()V
.registers 0
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/p;->c()V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/logic/p;Ljava/util/Date;)V
.registers 8
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->i:Landroid/os/Handler;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->i:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->ab:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
:cond_b
if-eqz p1, :cond_35
invoke-virtual {p1}, Ljava/util/Date;->getTime()J
move-result-wide v0
const-wide/32 v2, 0xa4cb800
sub-long/2addr v0, v2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
sub-long/2addr v0, v2
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-lez v2, :cond_35
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->i:Landroid/os/Handler;
if-nez v2, :cond_2b
new-instance v2, Landroid/os/Handler;
invoke-direct {v2}, Landroid/os/Handler;-><init>()V
iput-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->i:Landroid/os/Handler;
:cond_2b
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->i:Landroid/os/Handler;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->ab:Ljava/lang/Runnable;
const-wide/16 v4, 0x3e8
add-long/2addr v0, v4
invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_35
return-void
.end method
.method public static a(Lcom/spotify/mobile/android/ui/fragments/logic/q;)V
.registers 2
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->a:Ljava/util/LinkedHashSet;
invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
return-void
.end method
.method static synthetic a(ZZ)V
.registers 2
sput-boolean p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->d:Z
sput-boolean p1, Lcom/spotify/mobile/android/ui/fragments/logic/p;->e:Z
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/p;->c()V
return-void
.end method
.method static synthetic a(ZZLjava/util/Date;)V
.registers 3
sput-boolean p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->b:Z
sput-boolean p1, Lcom/spotify/mobile/android/ui/fragments/logic/p;->c:Z
sput-object p2, Lcom/spotify/mobile/android/ui/fragments/logic/p;->f:Ljava/util/Date;
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/p;->c()V
return-void
.end method
.method public static b(Lcom/spotify/mobile/android/ui/fragments/logic/q;)V
.registers 2
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->a:Ljava/util/LinkedHashSet;
invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method private static c()V
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
sget-boolean v0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->b:Z
if-eqz v0, :cond_95
sget-boolean v0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->c:Z
if-eqz v0, :cond_12
sget-boolean v0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->d:Z
if-eqz v0, :cond_95
sget-boolean v0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->e:Z
if-nez v0, :cond_95
:cond_12
move v0, v1
:goto_13
sget-object v3, Lcom/spotify/mobile/android/ui/fragments/logic/p;->f:Ljava/util/Date;
if-eqz v3, :cond_9b
sget-boolean v3, Lcom/spotify/mobile/android/ui/fragments/logic/p;->d:Z
if-nez v3, :cond_9b
sget-object v3, Lcom/spotify/mobile/android/ui/fragments/logic/p;->f:Ljava/util/Date;
invoke-virtual {v3}, Ljava/util/Date;->getTime()J
move-result-wide v3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
sub-long/2addr v3, v5
sget-boolean v5, Lcom/spotify/mobile/android/ui/fragments/logic/p;->b:Z
if-eqz v5, :cond_98
sget-boolean v5, Lcom/spotify/mobile/android/ui/fragments/logic/p;->c:Z
if-eqz v5, :cond_98
const-wide/32 v5, 0xa4cb800
cmp-long v3, v3, v5
if-gez v3, :cond_98
move v3, v1
:goto_36
sget-boolean v4, Lcom/spotify/mobile/android/ui/fragments/logic/p;->g:Z
if-ne v0, v4, :cond_3e
sget-boolean v4, Lcom/spotify/mobile/android/ui/fragments/logic/p;->h:Z
if-eq v3, v4, :cond_9a
:cond_3e
const-string v4, "show premium upsell? %s, show refill upsell? %s (logged in: %s, premium: %s, trial: %s, hide trial: %s, product-expiry: %s)"
const/4 v5, 0x7
new-array v5, v5, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
aput-object v6, v5, v2
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v5, v1
const/4 v1, 0x2
sget-boolean v2, Lcom/spotify/mobile/android/ui/fragments/logic/p;->b:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v5, v1
const/4 v1, 0x3
sget-boolean v2, Lcom/spotify/mobile/android/ui/fragments/logic/p;->c:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v5, v1
const/4 v1, 0x4
sget-boolean v2, Lcom/spotify/mobile/android/ui/fragments/logic/p;->d:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v5, v1
const/4 v1, 0x5
sget-boolean v2, Lcom/spotify/mobile/android/ui/fragments/logic/p;->e:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v5, v1
const/4 v1, 0x6
sget-object v2, Lcom/spotify/mobile/android/ui/fragments/logic/p;->f:Ljava/util/Date;
aput-object v2, v5, v1
invoke-static {v4, v5}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
sput-boolean v0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->g:Z
sput-boolean v3, Lcom/spotify/mobile/android/ui/fragments/logic/p;->h:Z
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->a:Ljava/util/LinkedHashSet;
invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_85
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_9a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/fragments/logic/q;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/q;->G()V
goto :goto_85
:cond_95
move v0, v2
goto/16 :goto_13
:cond_98
move v3, v2
goto :goto_36
:cond_9a
return-void
:cond_9b
move v3, v2
goto :goto_36
.end method
.method public static c(I)Z
.registers 3
const/4 v0, 0x0
packed-switch p0, :pswitch_data_12
:goto_4
:pswitch_4
:cond_4
return v0
:pswitch_5
sget-boolean v1, Lcom/spotify/mobile/android/ui/fragments/logic/p;->g:Z
if-nez v1, :cond_d
sget-boolean v1, Lcom/spotify/mobile/android/ui/fragments/logic/p;->h:Z
if-eqz v1, :cond_4
:cond_d
const/4 v0, 0x1
goto :goto_4
:pswitch_f
sget-boolean v0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->g:Z
goto :goto_4
:pswitch_data_12
.packed-switch 0x1
:pswitch_4
:pswitch_5
:pswitch_f
.end packed-switch
.end method
.method public static d(I)I
.registers 3
const v0, 0x7f0f0400
packed-switch p0, :pswitch_data_10
:goto_6
:cond_6
return v0
:pswitch_7
sget-boolean v1, Lcom/spotify/mobile/android/ui/fragments/logic/p;->h:Z
if-eqz v1, :cond_6
const v0, 0x7f0f0401
goto :goto_6
nop
:pswitch_data_10
.packed-switch 0x1
:pswitch_7
:pswitch_7
.end packed-switch
.end method
.method public static e(I)Ljava/lang/String;
.registers 2
packed-switch p0, :pswitch_data_26
:cond_3
sget-boolean v0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->g:Z
if-eqz v0, :cond_19
sget-boolean v0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->d:Z
if-eqz v0, :cond_19
sget-boolean v0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->e:Z
if-nez v0, :cond_19
const-string v0, "trial"
:goto_11
return-object v0
:pswitch_12
sget-boolean v0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->h:Z
if-eqz v0, :cond_3
const-string v0, "refill"
goto :goto_11
:cond_19
sget-boolean v0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->g:Z
if-eqz v0, :cond_24
sget-boolean v0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->c:Z
if-nez v0, :cond_24
const-string v0, "not-premium"
goto :goto_11
:cond_24
const/4 v0, 0x0
goto :goto_11
:pswitch_data_26
.packed-switch 0x1
:pswitch_12
:pswitch_12
.end packed-switch
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 6
const/4 v3, 0x0
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V
const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ClientInfo;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientInfo;->d()Z
move-result v0
if-eqz v0, :cond_29
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/p;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0198
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->Z:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
const v1, 0x7f0a0197
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->aa:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->Y:Z
:cond_29
return-void
.end method
.method public final z()V
.registers 3
invoke-super {p0}, Landroid/support/v4/app/Fragment;->z()V
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->Y:Z
if-eqz v0, :cond_1a
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/p;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0198
invoke-virtual {v0, v1}, Landroid/support/v4/app/y;->a(I)V
const v1, 0x7f0a0197
invoke-virtual {v0, v1}, Landroid/support/v4/app/y;->a(I)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->Y:Z
:cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->i:Landroid/os/Handler;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->i:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p;->ab:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
:cond_25
return-void
.end method