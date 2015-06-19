.class public final Lcom/instagram/feed/d/f;
.super Ljava/lang/Object;
.source "CommentRenderCache.java"
.field private static a:Lcom/instagram/feed/d/f;
.field private final b:Ljava/util/Map;
.field private final c:Ljava/util/Map;
.field private final d:Ljava/util/Map;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/feed/d/f;->b:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/feed/d/f;->c:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/feed/d/f;->d:Ljava/util/Map;
return-void
.end method
.method public static a()Lcom/instagram/feed/d/f;
.registers 1
sget-object v0, Lcom/instagram/feed/d/f;->a:Lcom/instagram/feed/d/f;
if-nez v0, :cond_7
invoke-static {}, Lcom/instagram/feed/d/f;->b()V
:cond_7
sget-object v0, Lcom/instagram/feed/d/f;->a:Lcom/instagram/feed/d/f;
return-object v0
.end method
.method private b(Lcom/instagram/feed/d/b;)Landroid/text/SpannableStringBuilder;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/instagram/feed/d/f;->a(Lcom/instagram/feed/d/b;Z)Landroid/text/SpannableStringBuilder;
move-result-object v0
return-object v0
.end method
.method private static declared-synchronized b()V
.registers 2
const-class v1, Lcom/instagram/feed/d/f;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/feed/d/f;->a:Lcom/instagram/feed/d/f;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_11
if-eqz v0, :cond_9
:goto_7
monitor-exit v1
return-void
:try_start_9
:cond_9
new-instance v0, Lcom/instagram/feed/d/f;
invoke-direct {v0}, Lcom/instagram/feed/d/f;-><init>()V
sput-object v0, Lcom/instagram/feed/d/f;->a:Lcom/instagram/feed/d/f;
:try_end_10
.catchall {:try_start_9 .. :try_end_10} :catchall_11
goto :goto_7
:catchall_11
move-exception v0
monitor-exit v1
throw v0
.end method
.method final a(Landroid/content/res/Resources;Lcom/instagram/feed/d/b;Landroid/text/TextPaint;I)Landroid/text/SpannableStringBuilder;
.registers 8
iget-object v0, p0, Lcom/instagram/feed/d/f;->c:Ljava/util/Map;
invoke-virtual {p2}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/text/SpannableStringBuilder;
if-nez v0, :cond_12
invoke-direct {p0, p2}, Lcom/instagram/feed/d/f;->b(Lcom/instagram/feed/d/b;)Landroid/text/SpannableStringBuilder;
move-result-object v0
:cond_12
invoke-virtual {p2}, Lcom/instagram/feed/d/b;->i()I
move-result v1
sget v2, Lcom/instagram/feed/d/d;->b:I
if-eq v1, v2, :cond_2d
invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
invoke-static {v1, v2, p3, p4}, Lcom/instagram/feed/d/g;->a(Ljava/lang/String;ILandroid/text/TextPaint;I)I
move-result v1
const/4 v2, 0x5
if-le v1, v2, :cond_2d
invoke-static {p1, p2, p3, p4}, Lcom/instagram/feed/d/g;->a(Landroid/content/res/Resources;Lcom/instagram/feed/d/b;Landroid/text/TextPaint;I)Landroid/text/SpannableStringBuilder;
move-result-object v0
:cond_2d
iget-object v1, p0, Lcom/instagram/feed/d/f;->c:Ljava/util/Map;
invoke-virtual {p2}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v0
.end method
.method final a(Lcom/instagram/feed/d/b;Z)Landroid/text/SpannableStringBuilder;
.registers 6
iget-object v0, p0, Lcom/instagram/feed/d/f;->b:Ljava/util/Map;
invoke-virtual {p1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/text/SpannableStringBuilder;
if-nez v0, :cond_21
invoke-static {p1, p2}, Lcom/instagram/feed/d/g;->a(Lcom/instagram/feed/d/b;Z)Landroid/text/SpannableStringBuilder;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_21
iget-object v1, p0, Lcom/instagram/feed/d/f;->b:Ljava/util/Map;
invoke-virtual {p1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_21
return-object v0
.end method
.method public final a(Lcom/instagram/feed/d/b;)Ljava/lang/CharSequence;
.registers 5
iget-object v0, p0, Lcom/instagram/feed/d/f;->d:Ljava/util/Map;
invoke-virtual {p1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/CharSequence;
if-nez v0, :cond_25
invoke-direct {p0, p1}, Lcom/instagram/feed/d/f;->b(Lcom/instagram/feed/d/b;)Landroid/text/SpannableStringBuilder;
move-result-object v0
invoke-static {p1, v0}, Lcom/instagram/feed/d/g;->a(Lcom/instagram/feed/d/b;Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_25
iget-object v1, p0, Lcom/instagram/feed/d/f;->d:Ljava/util/Map;
invoke-virtual {p1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_25
return-object v0
.end method