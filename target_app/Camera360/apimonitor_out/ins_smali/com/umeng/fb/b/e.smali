.class public Lcom/umeng/fb/b/e;
.super Ljava/lang/Object;
.source "StringMapper.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;)I
.registers 3
invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;
move-result-object v0
const-string/jumbo v1, "umeng_fb_contact_update_at"
invoke-virtual {v0, v1}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public static b(Landroid/content/Context;)I
.registers 3
invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;
move-result-object v0
const-string/jumbo v1, "umeng_fb_notification_ticker_text"
invoke-virtual {v0, v1}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public static c(Landroid/content/Context;)I
.registers 3
invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;
move-result-object v0
const-string/jumbo v1, "umeng_fb_notification_content_formatter_single_msg"
invoke-virtual {v0, v1}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public static d(Landroid/content/Context;)I
.registers 3
invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;
move-result-object v0
const-string/jumbo v1, "umeng_fb_notification_content_formatter_multiple_msg"
invoke-virtual {v0, v1}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I
move-result v0
return v0
.end method