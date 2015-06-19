.class public final Lcom/facebook/katana/provider/UserValuesProvider$Columns;
.super Ljava/lang/Object;
.source "UserValuesProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/provider/UserValuesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Columns"
.end annotation


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name DESC"

.field public static final PROP_NAME:Ljava/lang/String; = "name"

.field public static final PROP_VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
