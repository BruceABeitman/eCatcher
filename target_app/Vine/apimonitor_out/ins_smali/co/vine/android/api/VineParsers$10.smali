.class final Lco/vine/android/api/VineParsers$10;
.super Lco/vine/android/api/VineParsers$RecordParser;
.source "VineParsers.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/api/VineParsers$RecordParser;-><init>()V
return-void
.end method
.method public parse(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Lco/vine/android/api/VinePrivateMessage;
.registers 4
invoke-static {p1}, Lco/vine/android/api/VineParsers;->parsePrivateMessage(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePrivateMessage;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic parse(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lco/vine/android/api/VineParsers$10;->parse(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Lco/vine/android/api/VinePrivateMessage;
move-result-object v0
return-object v0
.end method