.class abstract Lcom/glympse/android/lib/an;
.super Ljava/lang/Object;
.source "ContentProvider.java"
.implements Lcom/glympse/android/lib/GContentProvider;
.field private ji:Ljava/lang/String;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public isMatches(Lcom/glympse/android/lib/GUri;)Z
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/an;->ji:Ljava/lang/String;
invoke-interface {p1}, Lcom/glympse/android/lib/GUri;->getScheme()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method protected m(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/an;->ji:Ljava/lang/String;
return-void
.end method
.method public stop()V
.registers 1
return-void
.end method