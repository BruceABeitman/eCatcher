.class public final Lcom/spotify/mobile/android/util/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z

.field public static final f:Z

.field public static final g:Z

.field public static final h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v6, 0x12

    const/16 v5, 0x11

    const/16 v4, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v4, :cond_44

    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/spotify/mobile/android/util/ab;->a:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_46

    move v0, v1

    :goto_14
    sput-boolean v0, Lcom/spotify/mobile/android/util/ab;->b:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v6, :cond_48

    move v0, v1

    :goto_1b
    sput-boolean v0, Lcom/spotify/mobile/android/util/ab;->c:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v0, v3, :cond_4a

    move v0, v1

    :goto_24
    sput-boolean v0, Lcom/spotify/mobile/android/util/ab;->d:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_4c

    move v0, v1

    :goto_2b
    sput-boolean v0, Lcom/spotify/mobile/android/util/ab;->e:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_4e

    move v0, v1

    :goto_32
    sput-boolean v0, Lcom/spotify/mobile/android/util/ab;->f:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_50

    move v0, v1

    :goto_39
    sput-boolean v0, Lcom/spotify/mobile/android/util/ab;->g:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_52

    :goto_41
    sput-boolean v1, Lcom/spotify/mobile/android/util/ab;->h:Z

    return-void

    :cond_44
    move v0, v2

    goto :goto_d

    :cond_46
    move v0, v2

    goto :goto_14

    :cond_48
    move v0, v2

    goto :goto_1b

    :cond_4a
    move v0, v2

    goto :goto_24

    :cond_4c
    move v0, v2

    goto :goto_2b

    :cond_4e
    move v0, v2

    goto :goto_32

    :cond_50
    move v0, v2

    goto :goto_39

    :cond_52
    move v1, v2

    goto :goto_41
.end method
