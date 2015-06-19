.class public final Lcom/spotify/mobile/android/util/cu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Set;

.field private c:[Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Lcom/spotify/mobile/android/util/cs;

.field private i:Lcom/spotify/mobile/android/util/ct;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "permissions"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "access_token"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "post_open_graph"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "enabled"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/util/cu;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/cu;->b:Ljava/util/Set;

    new-instance v0, Lcom/spotify/mobile/android/util/cu$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/cu$1;-><init>(Lcom/spotify/mobile/android/util/cu;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/cu;->i:Lcom/spotify/mobile/android/util/ct;

    iput-object p1, p0, Lcom/spotify/mobile/android/util/cu;->g:Landroid/content/Context;

    new-instance v0, Lcom/spotify/mobile/android/util/cs;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/cu;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/mobile/android/util/cu;->i:Lcom/spotify/mobile/android/util/ct;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/cs;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ct;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/cu;->h:Lcom/spotify/mobile/android/util/cs;

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "post_open_graph"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/x;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "access_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/x;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/cu;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_6

    :cond_10
    return-void
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/cu;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/util/cu;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/util/cu;->g:Landroid/content/Context;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "update_user_state"

    if-eqz p1, :cond_19

    :goto_c
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/spotify/mobile/android/provider/x;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_19
    const-string p2, ""

    goto :goto_c
.end method

.method public final a([Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/util/cu;->c:[Ljava/lang/String;

    iput-object p2, p0, Lcom/spotify/mobile/android/util/cu;->d:Ljava/lang/String;

    iput p3, p0, Lcom/spotify/mobile/android/util/cu;->e:I

    iput-boolean p4, p0, Lcom/spotify/mobile/android/util/cu;->f:Z

    return-void
.end method
