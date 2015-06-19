.class public abstract Lcom/pinguo/camera360/puzzle/template/BasePuzzleTemplateParser;
.super Ljava/lang/Object;
.source "BasePuzzleTemplateParser.java"

# interfaces
.implements Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateParser;


# static fields
.field static final ID:Ljava/lang/String; = "id"

.field static final ITEM:Ljava/lang/String; = "item"

.field static final NAME:Ljava/lang/String; = "name"

.field static final PADDING:Ljava/lang/String; = "padding"

.field static final POSITION:Ljava/lang/String; = "position"

.field static final RATIO:Ljava/lang/String; = "ratio"

.field static final TEMPLATE:Ljava/lang/String; = "template"

.field static final TYPE:Ljava/lang/String; = "type"

.field static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field final fileName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/template/BasePuzzleTemplateParser;->fileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppInstance()Lcom/pinguo/camera360/PgCameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/PgCameraApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/template/BasePuzzleTemplateParser;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
