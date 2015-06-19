.class public Lcom/glympse/android/lite/LiteFactory;
.super Ljava/lang/Object;
.source "LiteFactory.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static createDrawable(Landroid/graphics/drawable/BitmapDrawable;)Lcom/glympse/android/core/GDrawable;
.registers 2
invoke-static {p0}, Lcom/glympse/android/hal/HalFactory;->createDrawable(Landroid/graphics/drawable/BitmapDrawable;)Lcom/glympse/android/core/GDrawable;
move-result-object v0
return-object v0
.end method
.method public static createDrawable(Ljava/lang/String;I)Lcom/glympse/android/core/GDrawable;
.registers 3
invoke-static {p0, p1}, Lcom/glympse/android/hal/HalFactory;->createDrawable(Ljava/lang/String;I)Lcom/glympse/android/core/GDrawable;
move-result-object v0
return-object v0
.end method
.method public static createGlympse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/lite/GGlympseLite;
.registers 4
invoke-static {p0, p1, p2}, Lcom/glympse/android/api/GlympseFactory;->createGlympse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GGlympse;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/LibFactory;->createGlympseLite(Lcom/glympse/android/api/GGlympse;)Lcom/glympse/android/lite/GGlympseLite;
move-result-object v0
return-object v0
.end method
.method public static createPlace(DDLjava/lang/String;)Lcom/glympse/android/api/GPlace;
.registers 6
invoke-static {p0, p1, p2, p3, p4}, Lcom/glympse/android/lib/LibFactory;->createPlace(DDLjava/lang/String;)Lcom/glympse/android/api/GPlace;
move-result-object v0
return-object v0
.end method
.method public static createTicket(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Lcom/glympse/android/lite/GTicketLite;
.registers 4
invoke-static {p0, p1, p2}, Lcom/glympse/android/lib/LibFactory;->createTicketLite(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Lcom/glympse/android/lite/GTicketLite;
move-result-object v0
return-object v0
.end method