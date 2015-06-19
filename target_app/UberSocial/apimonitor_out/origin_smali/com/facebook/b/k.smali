.class public final Lcom/facebook/b/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "facebook.com"

.field public static final b:Ljava/lang/String; = "m.facebook.com"

.field public static final c:Ljava/lang/String; = "dialog/"

.field public static final d:Ljava/lang/String; = "scope"

.field public static final e:Ljava/lang/String; = "client_id"

.field public static final f:Ljava/lang/String; = "display"

.field public static final g:Ljava/lang/String; = "redirect_uri"

.field public static final h:Ljava/lang/String; = "type"

.field public static final i:Ljava/lang/String; = "https://graph.facebook.com"

.field public static final j:Ljava/lang/String; = "https://graph.facebook.com/"

.field public static final k:Ljava/lang/String; = "https://api.facebook.com/method/"

.field public static final l:Ljava/lang/String; = "method/"

.field public static final m:Ljava/util/Collection;

.field public static final n:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "service_disabled"

    aput-object v1, v0, v2

    const-string v1, "AndroidAuthKillSwitchException"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/facebook/b/p;->a([Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/facebook/b/k;->m:Ljava/util/Collection;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "access_denied"

    aput-object v1, v0, v2

    const-string v1, "OAuthAccessDeniedException"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/facebook/b/p;->a([Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/facebook/b/k;->n:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
