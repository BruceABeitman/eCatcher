.class public Lcom/lenovo/anyshare/sdk/internal/bb$c;
.super Lcom/lenovo/anyshare/sdk/internal/bb$a;
.source "RootUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field protected static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bb$c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/bb$a;-><init>(Lcom/lenovo/anyshare/sdk/internal/bb$1;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_12

    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_1f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_22

    invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/OutputStream;)V

    move-object v1, v2

    :goto_11
    return-void

    :catch_12
    move-exception v0

    :goto_13
    :try_start_13
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1a

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/OutputStream;)V

    goto :goto_11

    :catchall_1a
    move-exception v3

    :goto_1b
    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/OutputStream;)V

    throw v3

    :catchall_1f
    move-exception v3

    move-object v1, v2

    goto :goto_1b

    :catch_22
    move-exception v0

    move-object v1, v2

    goto :goto_13
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v3, Ljava/io/LineNumberReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    :goto_f
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_f

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1d
    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v2, 0x0

    const-string/jumbo v4, ""

    :try_start_4
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_2b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_22

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v5

    if-lez v5, :cond_1d

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_30
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1d} :catch_33

    :cond_1d
    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/InputStream;)V

    move-object v2, v3

    :goto_21
    return-object v4

    :catch_22
    move-exception v1

    :goto_23
    :try_start_23
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    move-result-object v4

    invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/InputStream;)V

    goto :goto_21

    :catchall_2b
    move-exception v5

    :goto_2c
    invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/InputStream;)V

    throw v5

    :catchall_30
    move-exception v5

    move-object v2, v3

    goto :goto_2c

    :catch_33
    move-exception v1

    move-object v2, v3

    goto :goto_23
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/bb$b;
    .registers 24

    new-instance v10, Lcom/lenovo/anyshare/sdk/internal/bb$b;

    invoke-direct {v10}, Lcom/lenovo/anyshare/sdk/internal/bb$b;-><init>()V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/lenovo/anyshare/sdk/internal/bb$c;->a:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/run"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/lenovo/anyshare/sdk/internal/bb$c;->a:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/result"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/lenovo/anyshare/sdk/internal/bb$c;->a:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/error"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " 1> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " 2> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "chmod 666 "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "chmod 666 "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lcom/lenovo/anyshare/sdk/internal/bb$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    const/4 v15, 0x0

    :try_start_d5
    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string/jumbo v19, "nac_server"

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V

    invoke-virtual {v9, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    new-instance v18, Ljava/io/PrintWriter;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    const/16 v20, 0x1

    invoke-direct/range {v18 .. v20}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V
    :try_end_f2
    .catchall {:try_start_d5 .. :try_end_f2} :catchall_256
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_f2} :catch_2ec

    :try_start_f2
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_104
    .catchall {:try_start_f2 .. :try_end_104} :catchall_2e0
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_104} :catch_2ef

    :try_start_104
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintWriter;->flush()V

    const-string/jumbo v14, ""

    const-string/jumbo v8, ""

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_117
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1f7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_127
    .catchall {:try_start_104 .. :try_end_127} :catchall_2e5
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_127} :catch_128

    goto :goto_117

    :catch_128
    move-exception v6

    move-object/from16 v15, v16

    move-object/from16 v17, v18

    :goto_12d
    :try_start_12d
    const-string/jumbo v19, "RootUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "RootUtils nac server LocalSocketAddress() failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_149
    .catchall {:try_start_12d .. :try_end_149} :catchall_256

    invoke-static/range {v17 .. v17}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Writer;)V

    invoke-static {v15}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Reader;)V

    :goto_14f
    const/4 v4, 0x0

    :try_start_150
    new-instance v5, Ljava/net/Socket;

    const-string/jumbo v19, "127.0.0.1"

    const/16 v20, 0x7531

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v5, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_15e
    .catchall {:try_start_150 .. :try_end_15e} :catchall_2c9
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_15e} :catch_2d3

    :try_start_15e
    new-instance v18, Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    const/16 v20, 0x1

    invoke-direct/range {v18 .. v20}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V
    :try_end_169
    .catchall {:try_start_15e .. :try_end_169} :catchall_2cb
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_169} :catch_2d6

    :try_start_169
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17b
    .catchall {:try_start_169 .. :try_end_17b} :catchall_2ce
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_17b} :catch_2da

    :try_start_17b
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintWriter;->flush()V

    const-string/jumbo v14, ""

    const-string/jumbo v8, ""

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_18e
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_25e

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1af
    .catchall {:try_start_17b .. :try_end_1af} :catchall_2bc
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_1af} :catch_1b0

    goto :goto_18e

    :catch_1b0
    move-exception v6

    move-object v4, v5

    move-object/from16 v15, v16

    move-object/from16 v17, v18

    :goto_1b6
    :try_start_1b6
    const-string/jumbo v19, "RootUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "RootUtils loop Socket() failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d2
    .catchall {:try_start_1b6 .. :try_end_1d2} :catchall_2c9

    invoke-static/range {v17 .. v17}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Writer;)V

    invoke-static {v15}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Reader;)V

    :goto_1d8
    const-string/jumbo v19, "RootUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "RootUtils loop error:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v10, Lcom/lenovo/anyshare/sdk/internal/bb$b;->b:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f6
    return-object v10

    :cond_1f7
    :try_start_1f7
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V

    const-string/jumbo v19, "success"

    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lcom/lenovo/anyshare/sdk/internal/bb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_230

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/lenovo/anyshare/sdk/internal/bb$c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/lenovo/anyshare/sdk/internal/bb$b;->a:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/lenovo/anyshare/sdk/internal/bb$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/lenovo/anyshare/sdk/internal/bb$b;->b:Ljava/lang/String;

    invoke-static {v10}, Lcom/lenovo/anyshare/sdk/internal/bb;->a(Lcom/lenovo/anyshare/sdk/internal/bb$b;)Z

    move-result v19

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/lenovo/anyshare/sdk/internal/bb$b;->c:Z
    :try_end_225
    .catchall {:try_start_1f7 .. :try_end_225} :catchall_2e5
    .catch Ljava/io/IOException; {:try_start_1f7 .. :try_end_225} :catch_128

    invoke-static/range {v18 .. v18}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Writer;)V

    invoke-static/range {v16 .. v16}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Reader;)V

    move-object/from16 v15, v16

    move-object/from16 v17, v18

    goto :goto_1f6

    :cond_230
    :try_start_230
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "socket failed! "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/lenovo/anyshare/sdk/internal/bb$b;->b:Ljava/lang/String;
    :try_end_24a
    .catchall {:try_start_230 .. :try_end_24a} :catchall_2e5
    .catch Ljava/io/IOException; {:try_start_230 .. :try_end_24a} :catch_128

    invoke-static/range {v18 .. v18}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Writer;)V

    invoke-static/range {v16 .. v16}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Reader;)V

    move-object/from16 v15, v16

    move-object/from16 v17, v18

    goto/16 :goto_14f

    :catchall_256
    move-exception v19

    :goto_257
    invoke-static/range {v17 .. v17}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Writer;)V

    invoke-static {v15}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Reader;)V

    throw v19

    :cond_25e
    :try_start_25e
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5}, Ljava/net/Socket;->close()V

    const-string/jumbo v19, "success"

    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lcom/lenovo/anyshare/sdk/internal/bb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_299

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/lenovo/anyshare/sdk/internal/bb$c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/lenovo/anyshare/sdk/internal/bb$b;->a:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/lenovo/anyshare/sdk/internal/bb$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/lenovo/anyshare/sdk/internal/bb$b;->b:Ljava/lang/String;

    invoke-static {v10}, Lcom/lenovo/anyshare/sdk/internal/bb;->a(Lcom/lenovo/anyshare/sdk/internal/bb$b;)Z

    move-result v19

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/lenovo/anyshare/sdk/internal/bb$b;->c:Z
    :try_end_28c
    .catchall {:try_start_25e .. :try_end_28c} :catchall_2bc
    .catch Ljava/io/IOException; {:try_start_25e .. :try_end_28c} :catch_1b0

    :goto_28c
    invoke-static/range {v18 .. v18}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Writer;)V

    invoke-static/range {v16 .. v16}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Reader;)V

    move-object v4, v5

    move-object/from16 v15, v16

    move-object/from16 v17, v18

    goto/16 :goto_1d8

    :cond_299
    :try_start_299
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/lenovo/anyshare/sdk/internal/bb$b;->b:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "loop failed! "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/lenovo/anyshare/sdk/internal/bb$b;->b:Ljava/lang/String;
    :try_end_2bb
    .catchall {:try_start_299 .. :try_end_2bb} :catchall_2bc
    .catch Ljava/io/IOException; {:try_start_299 .. :try_end_2bb} :catch_1b0

    goto :goto_28c

    :catchall_2bc
    move-exception v19

    move-object v4, v5

    move-object/from16 v15, v16

    move-object/from16 v17, v18

    :goto_2c2
    invoke-static/range {v17 .. v17}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Writer;)V

    invoke-static {v15}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/Reader;)V

    throw v19

    :catchall_2c9
    move-exception v19

    goto :goto_2c2

    :catchall_2cb
    move-exception v19

    move-object v4, v5

    goto :goto_2c2

    :catchall_2ce
    move-exception v19

    move-object v4, v5

    move-object/from16 v17, v18

    goto :goto_2c2

    :catch_2d3
    move-exception v6

    goto/16 :goto_1b6

    :catch_2d6
    move-exception v6

    move-object v4, v5

    goto/16 :goto_1b6

    :catch_2da
    move-exception v6

    move-object v4, v5

    move-object/from16 v17, v18

    goto/16 :goto_1b6

    :catchall_2e0
    move-exception v19

    move-object/from16 v17, v18

    goto/16 :goto_257

    :catchall_2e5
    move-exception v19

    move-object/from16 v15, v16

    move-object/from16 v17, v18

    goto/16 :goto_257

    :catch_2ec
    move-exception v6

    goto/16 :goto_12d

    :catch_2ef
    move-exception v6

    move-object/from16 v17, v18

    goto/16 :goto_12d
.end method

.method public a(Landroid/content/Context;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lenovo/anyshare/sdk/internal/bb$c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/lenovo/anyshare/sdk/internal/bb$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/tmpFile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-direct {p0, v2, v1}, Lcom/lenovo/anyshare/sdk/internal/bb$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mv "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lenovo/anyshare/sdk/internal/bb$c;->a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/bb$b;

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v2, 0x1

    :goto_72
    return v2

    :cond_73
    const/4 v2, 0x0

    goto :goto_72
.end method
