.class public final Lcom/spotify/mobile/android/spotlets/search/loader/task/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/search/loader/task/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/spotlets/search/loader/task/f",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/spotify/mobile/android/spotlets/search/loader/task/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/task/g;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/g;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/task/g;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/spotify/mobile/android/spotlets/search/loader/task/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/spotify/mobile/android/spotlets/search/loader/task/f",
            "<TT;TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/task/g;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/g;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method
