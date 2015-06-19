.class final Landroid/support/v7/internal/widget/ActivityChooserModel$DefaultSorter;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Landroid/support/v7/internal/widget/ActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultSorter"
.end annotation


# static fields
.field private static final WEIGHT_DECAY_COEFFICIENT:F = 0.95f


# instance fields
.field private final mPackageNameToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserModel;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$DefaultSorter;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserModel;Landroid/support/v7/internal/widget/ActivityChooserModel$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/support/v7/internal/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation

    iget-object v7, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_21

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;

    const/4 v8, 0x0

    iput v8, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget-object v8, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_21
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    const/high16 v5, 0x3f80

    move v3, v4

    :goto_2a
    if-ltz v3, :cond_4f

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;

    iget-object v8, v2, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;

    if-eqz v0, :cond_4c

    iget v8, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v9, v2, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iput v8, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    const v8, 0x3f733333

    mul-float/2addr v5, v8

    :cond_4c
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    :cond_4f
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method
