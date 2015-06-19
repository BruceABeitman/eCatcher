.class public Ltwitter4j/internal/org/json/JSONException;
.super Ljava/lang/Exception;
.source "JSONException.java"
.field private static final serialVersionUID:J
.field private cause:Ljava/lang/Throwable;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/Throwable;)V
.registers 3
invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
iput-object p1, p0, Ltwitter4j/internal/org/json/JSONException;->cause:Ljava/lang/Throwable;
return-void
.end method
.method public getCause()Ljava/lang/Throwable;
.registers 2
iget-object v0, p0, Ltwitter4j/internal/org/json/JSONException;->cause:Ljava/lang/Throwable;
return-object v0
.end method