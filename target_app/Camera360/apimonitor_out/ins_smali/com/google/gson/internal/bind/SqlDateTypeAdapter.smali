.class public final Lcom/google/gson/internal/bind/SqlDateTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SqlDateTypeAdapter.java"
.field public static final FACTORY:Lcom/google/gson/TypeAdapterFactory;
.field private final format:Ljava/text/DateFormat;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/gson/internal/bind/SqlDateTypeAdapter$1;
invoke-direct {v0}, Lcom/google/gson/internal/bind/SqlDateTypeAdapter$1;-><init>()V
sput-object v0, Lcom/google/gson/internal/bind/SqlDateTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V
new-instance v0, Ljava/text/SimpleDateFormat;
const-string/jumbo v1, "MMM d, yyyy"
invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/google/gson/internal/bind/SqlDateTypeAdapter;->format:Ljava/text/DateFormat;
return-void
.end method
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/SqlDateTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Date;
move-result-object v0
return-object v0
.end method
.method public declared-synchronized read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Date;
.registers 7
monitor-enter p0
:try_start_1
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v3
sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;
if-ne v3, v4, :cond_f
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_2a
const/4 v3, 0x0
:goto_d
monitor-exit p0
return-object v3
:cond_f
:try_start_f
iget-object v3, p0, Lcom/google/gson/internal/bind/SqlDateTypeAdapter;->format:Ljava/text/DateFormat;
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v3
invoke-virtual {v3}, Ljava/util/Date;->getTime()J
move-result-wide v1
new-instance v3, Ljava/sql/Date;
invoke-direct {v3, v1, v2}, Ljava/sql/Date;-><init>(J)V
:try_end_22
.catchall {:try_start_f .. :try_end_22} :catchall_2a
.catch Ljava/text/ParseException; {:try_start_f .. :try_end_22} :catch_23
goto :goto_d
:catch_23
move-exception v0
:try_start_24
new-instance v3, Lcom/google/gson/JsonSyntaxException;
invoke-direct {v3, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V
throw v3
:try_end_2a
.catchall {:try_start_24 .. :try_end_2a} :catchall_2a
:catchall_2a
move-exception v3
monitor-exit p0
throw v3
.end method
.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/sql/Date;
invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/SqlDateTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Date;)V
return-void
.end method
.method public declared-synchronized write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Date;)V
.registers 4
monitor-enter p0
if-nez p2, :cond_9
const/4 v0, 0x0
:try_start_4
:goto_4
invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
:try_end_7
.catchall {:try_start_4 .. :try_end_7} :catchall_10
monitor-exit p0
return-void
:try_start_9
:cond_9
iget-object v0, p0, Lcom/google/gson/internal/bind/SqlDateTypeAdapter;->format:Ljava/text/DateFormat;
invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
:try_end_e
.catchall {:try_start_9 .. :try_end_e} :catchall_10
move-result-object v0
goto :goto_4
:catchall_10
move-exception v0
monitor-exit p0
throw v0
.end method