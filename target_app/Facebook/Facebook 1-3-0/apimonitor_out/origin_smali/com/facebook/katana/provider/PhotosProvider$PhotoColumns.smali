.class public final Lcom/facebook/katana/provider/PhotosProvider$PhotoColumns;
.super Ljava/lang/Object;
.source "PhotosProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/provider/PhotosProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoColumns"
.end annotation


# static fields
.field public static final ALBUM_ID:Ljava/lang/String; = "aid"

.field public static final CAPTION:Ljava/lang/String; = "caption"

.field public static final CREATED:Ljava/lang/String; = "created"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "created DESC"

.field public static final FILENAME:Ljava/lang/String; = "filename"

.field public static final OWNER:Ljava/lang/String; = "owner"

.field public static final PHOTO_ID:Ljava/lang/String; = "pid"

.field public static final SRC:Ljava/lang/String; = "src"

.field public static final SRC_BIG:Ljava/lang/String; = "src_big"

.field public static final SRC_SMALL:Ljava/lang/String; = "src_small"

.field public static final THUMBNAIL:Ljava/lang/String; = "thumbnail"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
