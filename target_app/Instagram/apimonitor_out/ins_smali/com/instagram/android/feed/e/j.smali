.class public final Lcom/instagram/android/feed/e/j;
.super Ljava/lang/Object;
.source "MediaLinkBroadcastHandler.java"
.field private static final a:Landroid/content/IntentFilter;
.field private final b:Landroid/support/v4/app/Fragment;
.field private final c:Lcom/instagram/feed/g/a;
.field private final d:Landroid/content/BroadcastReceiver;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
sput-object v0, Lcom/instagram/android/feed/e/j;->a:Landroid/content/IntentFilter;
const-string v1, "Media.COMMENT_MENTION_CLICKED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
sget-object v0, Lcom/instagram/android/feed/e/j;->a:Landroid/content/IntentFilter;
const-string v1, "Media.COMMENT_HASHTAG_CLICKED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
sget-object v0, Lcom/instagram/android/feed/e/j;->a:Landroid/content/IntentFilter;
const-string v1, "Media.USER_CLICKED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
sget-object v0, Lcom/instagram/android/feed/e/j;->a:Landroid/content/IntentFilter;
const-string v1, "Media.NUMBER_LIKES_CLICKED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
sget-object v0, Lcom/instagram/android/feed/e/j;->a:Landroid/content/IntentFilter;
const-string v1, "Media.NUMBER_COMMENTS_CLICKED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
sget-object v0, Lcom/instagram/android/feed/e/j;->a:Landroid/content/IntentFilter;
const-string v1, "PeopleTag.BROADCAST_TAG_CLICKED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/android/feed/e/k;
invoke-direct {v0, p0}, Lcom/instagram/android/feed/e/k;-><init>(Lcom/instagram/android/feed/e/j;)V
iput-object v0, p0, Lcom/instagram/android/feed/e/j;->d:Landroid/content/BroadcastReceiver;
iput-object p1, p0, Lcom/instagram/android/feed/e/j;->b:Landroid/support/v4/app/Fragment;
iput-object p2, p0, Lcom/instagram/android/feed/e/j;->c:Lcom/instagram/feed/g/a;
return-void
.end method
.method static synthetic a(Lcom/instagram/android/feed/e/j;)Lcom/instagram/feed/g/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/e/j;->c:Lcom/instagram/feed/g/a;
return-object v0
.end method
.method static synthetic a(Landroid/content/Intent;Lcom/instagram/feed/g/a;)V
.registers 2
invoke-static {p0, p1}, Lcom/instagram/android/feed/e/j;->b(Landroid/content/Intent;Lcom/instagram/feed/g/a;)V
return-void
.end method
.method static synthetic a(Landroid/content/Intent;Ljava/lang/String;Lcom/instagram/feed/g/a;)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/instagram/android/feed/e/j;->b(Landroid/content/Intent;Ljava/lang/String;Lcom/instagram/feed/g/a;)V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/feed/e/j;)Landroid/support/v4/app/Fragment;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/e/j;->b:Landroid/support/v4/app/Fragment;
return-object v0
.end method
.method private static b(Landroid/content/Intent;Lcom/instagram/feed/g/a;)V
.registers 5
invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;
move-result-object v0
const-string v1, "Media.EXTRA_MEDIA_ID"
invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;
move-result-object v0
invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;
move-result-object v1
const-string v2, "Media.EXTRA_USER_ID"
invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Lcom/instagram/user/c/h;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;
move-result-object v1
invoke-static {v1, v0, p1}, Lcom/instagram/feed/c/e;->a(Lcom/instagram/user/c/a;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
return-void
.end method
.method private static b(Landroid/content/Intent;Ljava/lang/String;Lcom/instagram/feed/g/a;)V
.registers 5
invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;
move-result-object v0
const-string v1, "Media.EXTRA_MEDIA_ID"
invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;
move-result-object v0
invoke-static {p1, v0, p2}, Lcom/instagram/feed/c/e;->b(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/e/j;->d:Landroid/content/BroadcastReceiver;
sget-object v1, Lcom/instagram/android/feed/e/j;->a:Landroid/content/IntentFilter;
invoke-static {v0, v1}, Lcom/instagram/common/u/d;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/e/j;->d:Landroid/content/BroadcastReceiver;
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/BroadcastReceiver;)V
return-void
.end method