.class public final Lcom/facebook/katana/provider/KeyValueProvider$Columns;
.super Ljava/lang/Object;
.source "KeyValueProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/provider/KeyValueProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Columns"
.end annotation


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "key DESC"

.field public static final PROP_KEY:Ljava/lang/String; = "key"

.field public static final PROP_VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
