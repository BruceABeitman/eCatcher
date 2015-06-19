.class public Lcom/instagram/android/directshare/f/c;
.super Ljava/lang/Object;
.source "InboxUtil.java"
.field private static final a:Ljava/lang/Class;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/android/directshare/f/c;
sput-object v0, Lcom/instagram/android/directshare/f/c;->a:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Lcom/instagram/feed/d/l;)I
.registers 5
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ai()Z
move-result v0
if-eqz v0, :cond_25
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->al()J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-nez v0, :cond_13
sget v0, Lcom/instagram/android/directshare/f/d;->a:I
:goto_12
return v0
:cond_13
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->am()J
move-result-wide v0
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->al()J
move-result-wide v2
cmp-long v0, v0, v2
if-lez v0, :cond_22
sget v0, Lcom/instagram/android/directshare/f/d;->c:I
goto :goto_12
:cond_22
sget v0, Lcom/instagram/android/directshare/f/d;->b:I
goto :goto_12
:cond_25
sget v0, Lcom/instagram/android/directshare/f/d;->d:I
goto :goto_12
.end method
.method static a()J
.registers 2
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/b/a;->B()J
move-result-wide v0
return-wide v0
.end method
.method public static a(IJ)V
.registers 7
invoke-static {}, Lcom/instagram/common/t/a;->a()Lcom/instagram/common/t/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/t/a;->b()V
invoke-static {}, Lcom/instagram/android/directshare/f/c;->b()I
move-result v0
invoke-static {}, Lcom/instagram/android/directshare/f/c;->a()J
move-result-wide v1
cmp-long v3, p1, v1
if-ltz v3, :cond_28
sget-object v1, Lcom/instagram/android/directshare/f/c;->a:Ljava/lang/Class;
invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v1
invoke-virtual {v1, p0, p1, p2}, Lcom/instagram/k/b/a;->a(IJ)V
if-eq v0, p0, :cond_27
invoke-static {}, Lcom/instagram/android/directshare/f/c;->c()V
:goto_27
:cond_27
return-void
:cond_28
sget-object v0, Lcom/instagram/android/directshare/f/c;->a:Ljava/lang/Class;
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
goto :goto_27
.end method
.method public static a(J)V
.registers 3
invoke-static {}, Lcom/instagram/common/t/a;->a()Lcom/instagram/common/t/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/t/a;->b()V
const/4 v0, 0x0
invoke-static {v0, p0, p1}, Lcom/instagram/android/directshare/f/c;->a(IJ)V
return-void
.end method
.method public static a(Landroid/view/View;)V
.registers 4
if-nez p0, :cond_3
:goto_2
return-void
:cond_3
invoke-static {}, Lcom/instagram/android/directshare/f/c;->b()I
move-result v1
sget v0, Lcom/facebook/av;->action_bar_inbox_new_share_count:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
if-eqz v1, :cond_14
const/4 v2, -0x1
if-ne v1, v2, :cond_1a
:cond_14
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_2
:cond_1a
const/16 v2, 0xa
if-ge v1, v2, :cond_2a
invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
:goto_22
invoke-static {v0, v1}, Lcom/instagram/android/widget/q;->a(Landroid/widget/TextView;Ljava/lang/String;)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_2
:cond_2a
const-string v1, "9+"
goto :goto_22
.end method
.method public static a(Lcom/instagram/f/b/a;)V
.registers 4
invoke-virtual {p0}, Lcom/instagram/f/b/a;->b()I
move-result v0
invoke-virtual {p0}, Lcom/instagram/f/b/a;->a()J
move-result-wide v1
invoke-static {v0, v1, v2}, Lcom/instagram/android/directshare/f/c;->a(IJ)V
return-void
.end method
.method public static declared-synchronized b()I
.registers 2
const-class v1, Lcom/instagram/android/directshare/f/c;
monitor-enter v1
:try_start_3
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/b/a;->A()I
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_d
move-result v0
monitor-exit v1
return v0
:catchall_d
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static c()V
.registers 1
const-string v0, "INTENT_ACTION_UPDATE_INBOX_BADGE"
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Ljava/lang/String;)Z
return-void
.end method