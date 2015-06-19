.class Lcom/lenovo/content/base/ContentPath$ItemContentPath;
.super Lcom/lenovo/content/base/ContentPath;
.source "ContentPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/content/base/ContentPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemContentPath"
.end annotation


# direct methods
.method constructor <init>(Lcom/lenovo/content/base/ContentPath$ContainerContentPath;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/content/base/ContentPath;-><init>(Lcom/lenovo/content/base/ContentPath$ContainerContentPath;Ljava/lang/String;Lcom/lenovo/content/base/ContentPath$1;)V

    return-void
.end method
