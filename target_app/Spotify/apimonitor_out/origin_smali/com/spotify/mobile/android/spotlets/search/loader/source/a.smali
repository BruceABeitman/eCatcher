.class public final Lcom/spotify/mobile/android/spotlets/search/loader/source/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/search/loader/source/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/spotify/mobile/android/cosmos/JacksonModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/spotlets/search/loader/source/c",
        "<",
        "Lcom/spotify/cosmos/router/Request;",
        "TT;",
        "Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/spotify/mobile/android/spotlets/search/loader/task/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/search/loader/task/f",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/spotify/cosmos/android/Resolver;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/cosmos/parser/ResponseParser",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/a$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/source/a$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/a;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lcom/spotify/cosmos/android/Resolver;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lcom/spotify/cosmos/android/Resolver;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/cosmos/parser/JsonHttpParser;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/cosmos/parser/JsonHttpParser;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/a;->d:Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/cosmos/android/Resolver;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/a;->b:Lcom/spotify/cosmos/android/Resolver;

    invoke-static {p3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/a;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/search/loader/source/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/a;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Lcom/spotify/cosmos/android/Resolver;Landroid/os/Handler;)Lcom/spotify/mobile/android/spotlets/search/loader/source/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/spotify/mobile/android/cosmos/JacksonModel;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lcom/spotify/cosmos/android/Resolver;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/spotify/mobile/android/spotlets/search/loader/source/a",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/search/loader/source/a;-><init>(Ljava/lang/Class;Lcom/spotify/cosmos/android/Resolver;Landroid/os/Handler;)V

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/search/loader/source/a;)Lcom/spotify/cosmos/android/Resolver;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/a;->b:Lcom/spotify/cosmos/android/Resolver;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/search/loader/source/a;)Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/a;->d:Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/spotify/mobile/android/spotlets/search/loader/task/a;
    .registers 5

    check-cast p1, Lcom/spotify/cosmos/router/Request;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/search/loader/source/b;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/search/loader/source/b;-><init>(Lcom/spotify/mobile/android/spotlets/search/loader/source/a;)V

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/cosmos/router/Request;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/search/loader/source/b;->a(Lcom/spotify/cosmos/router/Request;)Lcom/spotify/mobile/android/spotlets/search/loader/source/b;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/loader/source/b;->a(Landroid/os/Handler;)Lcom/spotify/mobile/android/spotlets/search/loader/task/a;

    move-result-object v0

    invoke-static {}, Lcom/spotify/mobile/android/spotlets/search/loader/task/g;->a()Lcom/spotify/mobile/android/spotlets/search/loader/task/f;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/loader/source/a;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/f;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->a(Lcom/spotify/mobile/android/spotlets/search/loader/task/f;Lcom/spotify/mobile/android/spotlets/search/loader/task/f;)Lcom/spotify/mobile/android/spotlets/search/loader/task/a;

    move-result-object v0

    return-object v0
.end method
