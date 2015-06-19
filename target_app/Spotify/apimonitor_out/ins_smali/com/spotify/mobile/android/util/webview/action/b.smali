.class public abstract Lcom/spotify/mobile/android/util/webview/action/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/util/Map;
.field protected b:Landroid/content/Context;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/webview/action/b;->a:Ljava/util/Map;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/webview/action/b;->a:Ljava/util/Map;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iput-object p1, p0, Lcom/spotify/mobile/android/util/webview/action/b;->b:Landroid/content/Context;
return-void
.end method
.method public abstract a()V
.end method
.method public final a(Ljava/util/Map;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/webview/action/b;->a:Ljava/util/Map;
return-void
.end method
.method public final b()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/webview/action/b;->a:Ljava/util/Map;
return-object v0
.end method