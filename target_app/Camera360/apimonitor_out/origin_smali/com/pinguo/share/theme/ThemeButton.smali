.class public Lcom/pinguo/share/theme/ThemeButton;
.super Landroid/widget/Button;
.source "ThemeButton.java"


# instance fields
.field private select:Lcom/pinguo/share/theme/ThemeXMLStruct;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getSelect()Lcom/pinguo/share/theme/ThemeXMLStruct;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/theme/ThemeButton;->select:Lcom/pinguo/share/theme/ThemeXMLStruct;

    return-object v0
.end method

.method public setSelect(Lcom/pinguo/share/theme/ThemeXMLStruct;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/theme/ThemeButton;->select:Lcom/pinguo/share/theme/ThemeXMLStruct;

    return-void
.end method
