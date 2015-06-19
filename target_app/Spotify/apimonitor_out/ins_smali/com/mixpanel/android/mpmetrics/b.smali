.class final Lcom/mixpanel/android/mpmetrics/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/lang/String;
.field private final b:Lorg/json/JSONObject;
.field private final c:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/b;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/b;->b:Lorg/json/JSONObject;
iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/b;->c:Ljava/lang/String;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/b;->a:Ljava/lang/String;
return-object v0
.end method
.method public final b()Lorg/json/JSONObject;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/b;->b:Lorg/json/JSONObject;
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/b;->c:Ljava/lang/String;
return-object v0
.end method