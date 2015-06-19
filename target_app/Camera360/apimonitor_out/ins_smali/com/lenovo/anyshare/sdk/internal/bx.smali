.class public final Lcom/lenovo/anyshare/sdk/internal/bx;
.super Ljava/lang/Object;
.source "ContentUtils.java"
.method public static a(Landroid/content/Context;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
.registers 6
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/bi;->a()Lcom/lenovo/anyshare/sdk/internal/bi;
move-result-object v2
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/bi;->c()Lcom/lenovo/content/base/ContentSource;
move-result-object v1
:try_start_8
invoke-virtual {v1, p1, p2}, Lcom/lenovo/content/base/ContentSource;->getItem(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
:try_end_b
.catch Lcom/lenovo/anyshare/sdk/internal/bm; {:try_start_8 .. :try_end_b} :catch_d
move-result-object v2
:goto_c
return-object v2
:catch_d
move-exception v0
const/4 v2, 0x0
goto :goto_c
.end method
.method public static b(Landroid/content/Context;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
.registers 6
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/bi;->a()Lcom/lenovo/anyshare/sdk/internal/bi;
move-result-object v2
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/bi;->c()Lcom/lenovo/content/base/ContentSource;
move-result-object v1
:try_start_8
invoke-virtual {v1, p1, p2}, Lcom/lenovo/content/base/ContentSource;->getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
:try_end_b
.catch Lcom/lenovo/anyshare/sdk/internal/bm; {:try_start_8 .. :try_end_b} :catch_d
move-result-object v2
:goto_c
return-object v2
:catch_d
move-exception v0
const/4 v2, 0x0
goto :goto_c
.end method