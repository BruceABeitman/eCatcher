.class public interface abstract Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/c;
.implements Lcom/google/android/gms/games/multiplayer/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/c",
        "<",
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;",
        ">;",
        "Lcom/google/android/gms/games/multiplayer/f;"
    }
.end annotation


# static fields
.field public static final a_:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->a_:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public abstract b()Lcom/google/android/gms/games/Game;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()J
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()I
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public abstract l()J
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public abstract n()[B
.end method

.method public abstract o()I
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method public abstract q()[B
.end method

.method public abstract r()I
.end method

.method public abstract s()Landroid/os/Bundle;
.end method

.method public abstract t()I
.end method

.method public abstract u()Z
.end method

.method public abstract v()Ljava/lang/String;
.end method
