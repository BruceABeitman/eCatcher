.class Lcom/pinguo/share/theme/ThemeXMLConsole$2;
.super Ljava/lang/Thread;
.source "ThemeXMLConsole.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/theme/ThemeXMLConsole;->uploadModel(Landroid/content/Context;Ljava/lang/String;Z)Z
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

    iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLConsole$2;->this$0:Lcom/pinguo/share/theme/ThemeXMLConsole;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLConsole$2;->this$0:Lcom/pinguo/share/theme/ThemeXMLConsole;

    invoke-static {}, Lcom/pinguo/share/theme/ThemeXMLConsole;->loadJSONFile()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/share/theme/ThemeXMLConsole;->uploadPhotoes(Ljava/util/List;Z)V

    return-void
.end method
