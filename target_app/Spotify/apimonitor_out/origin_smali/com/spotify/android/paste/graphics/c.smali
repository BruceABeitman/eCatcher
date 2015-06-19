.class public final Lcom/spotify/android/paste/graphics/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->a:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;

    iput-object v0, p0, Lcom/spotify/android/paste/graphics/c;->a:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;

    iput v1, p0, Lcom/spotify/android/paste/graphics/c;->b:I

    iput v1, p0, Lcom/spotify/android/paste/graphics/c;->c:I

    return-void
.end method
