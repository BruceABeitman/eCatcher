.class Lcom/pinguo/share/theme/ThemeXMLConsole$1;
.super Ljava/lang/Thread;
.source "ThemeXMLConsole.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/theme/ThemeXMLConsole;->getFirstInformation(Landroid/content/Context;Lcom/pinguo/share/theme/IShowContent;)Lcom/pinguo/share/theme/ThemeXMLStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/theme/ThemeXMLConsole;


# direct methods
.method constructor <init>(Lcom/pinguo/share/theme/ThemeXMLConsole;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLConsole$1;->this$0:Lcom/pinguo/share/theme/ThemeXMLConsole;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLConsole$1;->this$0:Lcom/pinguo/share/theme/ThemeXMLConsole;

    iget-object v1, p0, Lcom/pinguo/share/theme/ThemeXMLConsole$1;->this$0:Lcom/pinguo/share/theme/ThemeXMLConsole;

    #getter for: Lcom/pinguo/share/theme/ThemeXMLConsole;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/pinguo/share/theme/ThemeXMLConsole;->access$0(Lcom/pinguo/share/theme/ThemeXMLConsole;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/share/theme/ThemeXMLConsole;->uploadModelInfo(Landroid/content/Context;)Ljava/util/List;

    return-void
.end method
