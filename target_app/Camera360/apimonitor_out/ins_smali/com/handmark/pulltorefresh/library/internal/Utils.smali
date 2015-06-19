.class public Lcom/handmark/pulltorefresh/library/internal/Utils;
.super Ljava/lang/Object;
.source "Utils.java"
.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const-string/jumbo v0, "PullToRefresh"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "You\'re using the deprecated "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " attr, please switch over to "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method