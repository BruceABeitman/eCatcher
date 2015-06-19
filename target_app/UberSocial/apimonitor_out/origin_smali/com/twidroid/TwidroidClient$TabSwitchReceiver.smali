.class public Lcom/twidroid/TwidroidClient$TabSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "Twidroyd.Tabswitch"

.field public static final b:Ljava/lang/String; = "twidroid.broadcast"

.field public static final c:Ljava/lang/String; = "Action"

.field public static final d:Ljava/lang/String; = "TabName"

.field public static final e:Ljava/lang/String; = "EXTRA_UPDATE_MESSAGEINDICATORS"

.field public static final f:Ljava/lang/String; = "exit"

.field public static final g:Ljava/lang/String; = "EXTRA_ACTION_RESTART"

.field public static final h:Ljava/lang/String; = "openuserprofile"

.field public static final i:Ljava/lang/String; = "action_suggest_a_feature"

.field public static final j:Ljava/lang/String; = "refresh"

.field public static final k:Ljava/lang/String; = "splashscreen"

.field public static final l:Ljava/lang/String; = "search"


# instance fields
.field final synthetic m:Lcom/twidroid/TwidroidClient;


# direct methods
.method public constructor <init>(Lcom/twidroid/TwidroidClient;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$TabSwitchReceiver;->m:Lcom/twidroid/TwidroidClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$TabSwitchReceiver;->m:Lcom/twidroid/TwidroidClient;

    invoke-virtual {v0, p2}, Lcom/twidroid/TwidroidClient;->c(Landroid/content/Intent;)V

    return-void
.end method
