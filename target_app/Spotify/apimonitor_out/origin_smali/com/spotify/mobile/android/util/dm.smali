.class public Lcom/spotify/mobile/android/util/dm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;


# static fields
.field protected static final a:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/spotify/mobile/android/util/cx;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "android-material-enabled"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/util/dm;->a:Lcom/spotify/mobile/android/util/cz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/dm;->b:Lcom/spotify/mobile/android/util/cx;

    sget-object v0, Lcom/spotify/mobile/android/ui/page/DebugFlag;->c:Lcom/spotify/mobile/android/ui/page/DebugFlag;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/dm;->b:Lcom/spotify/mobile/android/util/cx;

    sget-object v1, Lcom/spotify/mobile/android/util/dm;->a:Lcom/spotify/mobile/android/util/cz;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/util/dm;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/util/dm;->c:Z

    return v0
.end method
