.class final Lcom/c/di;
.super Lcom/c/da;


# static fields
.field private static b:Ljava/lang/reflect/Method;

.field private static final n:[Ljava/lang/String;


# instance fields
.field private final c:Lcom/c/bp;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/telephony/TelephonyManager;

.field private final f:Ljava/util/ArrayList;

.field private h:Landroid/telephony/PhoneStateListener;

.field private i:Lcom/c/l;

.field private j:J

.field private k:Lcom/c/ba;

.field private l:Ljava/lang/Integer;

.field private m:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u000e@h\r@\u0006JB\u001e[\u0006XiEh<cM\u001bN\u001fZi\rf\u0002^`"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u0001A,8|\"\u000em\u001bN\u001fZi\r\u000f\tAy\u0011K"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u001fFc\u0011JOZu\u000fJO\u0013,"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u001fFc\u0011JO@c\u000b\u000f\tAy\u0011K"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u001fFc\u0011J"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0000@_\u001a]\u0019Go\u001a|\u001bOx\u001al\u0007Ob\u0018J\u000b\u0006"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\nVo\u001a_\u001bGc\u0011\u000f\u0006@,\u0010A<K~\tF\u000cK_\u000bN\u001bKO\u0017N\u0001Ii\u001b\u0007F"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0002Oe\u0011\u000f\u000cK`\u0013\u000f\u0002MoE\u000f"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "OCb\u001c\u0015O"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u001a@m\u001dC\n\u000ex\u0010\u000f\u001fO~\u000cJOIi\u000ba\nZ{\u0010]\u0004a|\u001a]\u000eZc\r\u0007F\u0014,"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u0006@z\u001eC\u0006J,\u001cJ\u0003B6_"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u000cAy\u0013K\u0001\tx__\u000e\\\u007f\u001a\u000f\u0002MoPB\u0001M6_"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u000cAy\u0013K\u0001\tx_F\u0001Xc\u0014JOIi\u000ba\nGk\u0017M\u0000\\O\u001aC\u0003]$V"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "0]h\u0014N"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u0000@_\u0016H\u0001O`,[\u001dKb\u0018[\u0007md\u001eA\u0008KhW"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\nVo\u001a_\u001bGc\u0011\u000f\u0006@,\u0010A<Gk\u0011N\u0003}x\rJ\u0001Ix\u0017l\u0007Ob\u0018J\u000b"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u000cK`\u0013\u000f\u0001Ax_h<c"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u0001K{_B\u000eGb_L\nB`E\u000f"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u0008Ax_J\u0019Kb\u000b\u000f\u0018Fe\u0013JOM`\u0010\\\nJ"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u000cObX[OJe\u000cN\rBi_C\u0000Mm\u000bF\u0000@,\n_\u000bOx\u001a\\"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u000e@h\r@\u0006J\"\u000fJ\u001dCe\u000c\\\u0006AbQl `X-`#q@0l.zE0a0{\\;n;k_"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u000cAy\u0013K\u0001\tx_K\u0006]m\u001dC\n\u000e`\u0010L\u000eZe\u0010AO[|\u001bN\u001bK\u007f"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u000bG\u007f\u001eM\u0003K@\u0010L\u000eZe\u0010A:^h\u001e[\n]"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u0001A,\u000f]\nXe\u0010Z\u001c\u000e\u007f\u001cN\u0001@i\u001b\u000f\u000cK`\u0013\\OZc_L\u000eMd\u001a"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u000cOo\u0017J\u000b\u000e|\rJ\u0019Gc\n\\OMi\u0013C\u001c\u0002,\u001cN\u000cFi_F\u001c\u000eb\u0010XU\u000e"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u0003A\u007f\u000b\u000f\u001cK~\tF\u0001I,\u001cJ\u0003B"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\nVo\u001a_\u001bGc\u0011\u000f\u0006@,\u0010A,K`\u0013c\u0000Mm\u000bF\u0000@O\u0017N\u0001Ii\u001b"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u0008Ax_Z\u0001Eb\u0010X\u0001\u000eO\u001aC\u0003bc\u001cN\u001bGc\u0011\u000f\u001c[n\u001cC\u000e]\u007f"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u0000@O\u001aC\u0003bc\u001cN\u001bGc\u0011l\u0007Ob\u0018J\u000b\u0006"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\n@m\u001dC\nbc\u001cN\u001bGc\u0011z\u001fJm\u000bJ\u001c"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u0003Ao\u001e[\u0006Ab_Z\u001fJm\u000bJ\u001c\u000ei\u0011N\rBi\u001b"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u0001Ax_N\u0003Bc\u0008J\u000b\u000ex\u0010\u000f\n@m\u001dC\n\u0001h\u0016\\\u000eL`\u001a\u000f\u0003Ao\u001e[\u0006Ab_Z\u001fJm\u000bJ\u001c"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u000cAy\u0013K\u0001\tx_J\u0001On\u0013JOBc\u001cN\u001bGc\u0011\u000f\u001a^h\u001e[\n]"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/c/di;->n:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/c/di;->b:Ljava/lang/reflect/Method;

    const-class v0, Lcom/c/di;

    invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;

    move-result-object v1

    :try_start_1d5
    const-string v0, "\u000cAaQ\\\u0004Wd\u0010@\u0004Ye\rJ\u0003K\u007f\u000c\u00010]h\u0014H\r"
    :try_end_1d7
    .catch Ljava/lang/Throwable; {:try_start_1d5 .. :try_end_1d7} :catch_20b

    invoke-static {v0}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v0

    invoke-static {v0}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v0

    :try_start_1df
    invoke-static {v0}, Lcom/c/di;->a(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/c/di;->b:Ljava/lang/reflect/Method;
    :try_end_1e5
    .catch Ljava/lang/Throwable; {:try_start_1df .. :try_end_1e5} :catch_20b

    :goto_1e5
    sget-object v0, Lcom/c/di;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1f9

    :try_start_1e9
    const-string v0, "\u000cAaQ\\\u0004Wd\u0010@\u0004Ye\rJ\u0003K\u007f\u000c\u00010]h\u0014I\r"
    :try_end_1eb
    .catch Ljava/lang/Throwable; {:try_start_1e9 .. :try_end_1eb} :catch_21a

    invoke-static {v0}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v0

    invoke-static {v0}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v0

    :try_start_1f3
    invoke-static {v0}, Lcom/c/di;->a(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/c/di;->b:Ljava/lang/reflect/Method;
    :try_end_1f9
    .catch Ljava/lang/Throwable; {:try_start_1f3 .. :try_end_1f9} :catch_21a

    :cond_1f9
    :goto_1f9
    sget-object v0, Lcom/c/di;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_229

    const-string v0, "\u000cAy\u0013K\u0001\tx_H\nZ,\u0018J\u001b`i\u0016H\u0007Lc\rl\nB`\u000c\u0007F"

    invoke-static {v0}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v0

    invoke-static {v0}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :goto_20a
    return-void

    :catch_20b
    move-exception v0

    const-string v2, "\u000cAaQ\\\u0004Wd\u0010@\u0004Ye\rJ\u0003K\u007f\u000c\u00010]h\u0014H\r"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e5

    :catch_21a
    move-exception v0

    const-string v2, "\u000cAaQ\\\u0004Wd\u0010@\u0004Ye\rJ\u0003K\u007f\u000c\u00010]h\u0014I\r"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f9

    :cond_229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u001a]e\u0011HO"

    invoke-static {v2}, Lcom/c/di;->b(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/di;->a([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/c/di;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/c/bp;->b(Ljava/lang/String;)V

    goto :goto_20a
.end method

.method public constructor <init>(Lcom/c/b;)V
    .registers 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget v1, Lcom/c/ak;->c:I

    invoke-direct {p0}, Lcom/c/da;-><init>()V

    iput-object v3, p0, Lcom/c/di;->h:Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/c/di;->i:Lcom/c/l;

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/c/di;->j:J

    iput-object v3, p0, Lcom/c/di;->k:Lcom/c/ba;

    iput-object v3, p0, Lcom/c/di;->l:Ljava/lang/Integer;

    iput-object v3, p0, Lcom/c/di;->m:Ljava/util/List;

    const-class v0, Lcom/c/di;

    invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;

    move-result-object v0

    iput-object v0, p0, Lcom/c/di;->c:Lcom/c/bp;

    check-cast p1, Lcom/c/cm;

    invoke-virtual {p1}, Lcom/c/cm;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/c/di;->d:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/di;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/c/di;->d:Landroid/content/Context;

    sget-object v4, Lcom/c/di;->n:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_4e

    iget-object v4, p0, Lcom/c/di;->c:Lcom/c/bp;

    sget-object v5, Lcom/c/di;->n:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/c/bp;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_79

    sget-boolean v1, Lcom/c/bp;->b:Z

    if-eqz v1, :cond_7c

    const/4 v1, 0x0

    :goto_4c
    sput-boolean v1, Lcom/c/bp;->b:Z

    :cond_4e
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iget-object v4, p0, Lcom/c/di;->c:Lcom/c/bp;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/c/di;->n:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/c/bp;->b(Ljava/lang/String;)V

    if-eq v1, v2, :cond_79

    iget-object v0, p0, Lcom/c/di;->c:Lcom/c/bp;

    sget-object v1, Lcom/c/di;->n:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->d(Ljava/lang/String;)V

    move-object v0, v3

    :cond_79
    iput-object v0, p0, Lcom/c/di;->e:Landroid/telephony/TelephonyManager;

    return-void

    :cond_7c
    move v1, v2

    goto :goto_4c
.end method

.method private a(Landroid/telephony/gsm/GsmCellLocation;)Lcom/c/l;
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/c/di;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_33

    iget-object v1, p0, Lcom/c/di;->c:Lcom/c/bp;

    invoke-virtual {v1}, Lcom/c/bp;->b()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/c/di;->c:Lcom/c/bp;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_32
    :goto_32
    return-object v0

    :cond_33
    const/4 v1, 0x0

    const/4 v3, 0x3

    :try_start_35
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_4d} :catch_ac

    move-result v2

    iget-object v3, p0, Lcom/c/di;->c:Lcom/c/bp;

    invoke-virtual {v3}, Lcom/c/bp;->b()Z

    move-result v3

    if-eqz v3, :cond_7f

    iget-object v3, p0, Lcom/c/di;->c:Lcom/c/bp;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/c/di;->n:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_7f
    if-nez v1, :cond_cb

    if-nez v2, :cond_cb

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    if-nez v3, :cond_cb

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    if-nez v3, :cond_cb

    iget-object v1, p0, Lcom/c/di;->c:Lcom/c/bp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/c/bp;->d(Ljava/lang/String;)V

    goto :goto_32

    :catch_ac
    move-exception v1

    iget-object v3, p0, Lcom/c/di;->c:Lcom/c/bp;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v6, 0xb

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/c/bp;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    :cond_cb
    new-instance v0, Lcom/c/l;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/l;-><init>(IIII)V

    goto/16 :goto_32
.end method

.method private static a([C)Ljava/lang/String;
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_29

    :cond_5
    move-object v2, p0

    move v3, v1

    :goto_7
    aget-char v5, p0, v1

    rem-int/lit8 v4, v3, 0x5

    packed-switch v4, :pswitch_data_36

    const/16 v4, 0x2f

    :goto_10
    xor-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, p0, v1

    add-int/lit8 v1, v3, 0x1

    if-nez v0, :cond_28

    move-object p0, v2

    move v3, v1

    move v1, v0

    goto :goto_7

    :pswitch_1c
    const/16 v4, 0x6f

    goto :goto_10

    :pswitch_1f
    const/16 v4, 0x2e

    goto :goto_10

    :pswitch_22
    const/16 v4, 0xc

    goto :goto_10

    :pswitch_25
    const/16 v4, 0x7f

    goto :goto_10

    :cond_28
    move-object p0, v2

    :cond_29
    if-gt v0, v1, :cond_5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 6

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/telephony/TelephonyManager;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/c/bp;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lcom/c/l;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/c/l;)Ljava/util/List;
    .registers 7

    sget-object v0, Lcom/c/di;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2a

    :try_start_4
    sget-object v0, Lcom/c/di;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/c/di;->e:Landroid/telephony/TelephonyManager;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/c/di;->c:Lcom/c/bp;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1d} :catch_1e

    :goto_1d
    return-object v0

    :catch_1e
    move-exception v0

    iget-object v1, p0, Lcom/c/di;->c:Lcom/c/bp;

    sget-object v2, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1d
.end method

.method private declared-synchronized a(I)V
    .registers 7

    const/4 v4, -0x1

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/c/di;->c:Lcom/c/bp;

    invoke-virtual {v0}, Lcom/c/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/c/di;->c:Lcom/c/bp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_60

    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/c/di;->h:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/c/di;->c:Lcom/c/bp;

    sget-object v1, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_60
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_3b} :catch_53

    :cond_3b
    :goto_3b
    monitor-exit p0

    return-void

    :cond_3d
    :try_start_3d
    iget-object v0, p0, Lcom/c/di;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v1, :cond_63

    iget-object v0, p0, Lcom/c/di;->c:Lcom/c/bp;

    sget-object v1, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_3d .. :try_end_52} :catchall_60
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_52} :catch_53

    goto :goto_3b

    :catch_53
    move-exception v0

    :try_start_54
    iget-object v1, p0, Lcom/c/di;->c:Lcom/c/bp;

    sget-object v2, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5f
    .catchall {:try_start_54 .. :try_end_5f} :catchall_60

    goto :goto_3b

    :catchall_60
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_63
    :try_start_63
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    iget-object v1, p0, Lcom/c/di;->i:Lcom/c/l;

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lcom/c/di;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lcom/c/di;->k:Lcom/c/ba;

    if-eqz v1, :cond_8e

    if-eqz v0, :cond_8b

    iget-object v1, p0, Lcom/c/di;->i:Lcom/c/l;

    invoke-virtual {v1}, Lcom/c/l;->c()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-ne v1, v2, :cond_8b

    iget-object v1, p0, Lcom/c/di;->i:Lcom/c/l;

    invoke-virtual {v1}, Lcom/c/l;->b()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-eq v1, v2, :cond_8e

    :cond_8b
    invoke-direct {p0}, Lcom/c/di;->g()V

    :cond_8e
    if-eqz v0, :cond_a8

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-eq v1, v4, :cond_a8

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-eq v1, v4, :cond_a8

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-nez v1, :cond_af

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-nez v1, :cond_af

    :cond_a8
    invoke-direct {p0}, Lcom/c/di;->h()V

    sget v1, Lcom/c/ak;->c:I

    if-eqz v1, :cond_3b

    :cond_af
    iget-object v1, p0, Lcom/c/di;->i:Lcom/c/l;

    if-eqz v1, :cond_cb

    iget-object v1, p0, Lcom/c/di;->i:Lcom/c/l;

    invoke-virtual {v1}, Lcom/c/l;->c()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-ne v1, v2, :cond_cb

    iget-object v1, p0, Lcom/c/di;->i:Lcom/c/l;

    invoke-virtual {v1}, Lcom/c/l;->b()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-eq v1, v2, :cond_fb

    :cond_cb
    invoke-direct {p0, v0}, Lcom/c/di;->a(Landroid/telephony/gsm/GsmCellLocation;)Lcom/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/c/di;->i:Lcom/c/l;

    iget-object v0, p0, Lcom/c/di;->c:Lcom/c/bp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/c/di;->i:Lcom/c/l;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/c/di;->i:Lcom/c/l;

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/c/di;->i:Lcom/c/l;

    invoke-direct {p0, v0}, Lcom/c/di;->a(Lcom/c/l;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/c/di;->m:Ljava/util/List;

    :cond_fb
    invoke-static {p1}, Lcom/c/ak;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/c/di;->l:Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/di;->j:J

    invoke-static {}, Lcom/c/ba;->d()Lcom/c/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/c/di;->k:Lcom/c/ba;

    invoke-virtual {p0}, Lcom/c/di;->a()V
    :try_end_114
    .catchall {:try_start_63 .. :try_end_114} :catchall_60
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_114} :catch_53

    goto/16 :goto_3b
.end method

.method private declared-synchronized a(Landroid/telephony/CellLocation;)V
    .registers 7

    const/4 v4, -0x1

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/c/di;->c:Lcom/c/bp;

    invoke-virtual {v0}, Lcom/c/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/c/di;->c:Lcom/c/bp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_2c
    iget-object v0, p0, Lcom/c/di;->h:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/c/di;->c:Lcom/c/bp;

    sget-object v1, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_2 .. :try_end_3b} :catchall_6a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3b} :catch_5d

    :cond_3b
    :goto_3b
    monitor-exit p0

    return-void

    :cond_3d
    :try_start_3d
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;
    :try_end_3f
    .catchall {:try_start_3d .. :try_end_3f} :catchall_6a
    .catch Ljava/lang/ClassCastException; {:try_start_3d .. :try_end_3f} :catch_6d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3f} :catch_5d

    if-eqz p1, :cond_59

    :try_start_41
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-eq v0, v4, :cond_59

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    if-eq v0, v4, :cond_59

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    if-nez v0, :cond_3b

    :cond_59
    invoke-direct {p0}, Lcom/c/di;->h()V
    :try_end_5c
    .catchall {:try_start_41 .. :try_end_5c} :catchall_6a
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_5c} :catch_5d

    goto :goto_3b

    :catch_5d
    move-exception v0

    :try_start_5e
    iget-object v1, p0, Lcom/c/di;->c:Lcom/c/bp;

    sget-object v2, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v3, 0x1a

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_5e .. :try_end_69} :catchall_6a

    goto :goto_3b

    :catchall_6a
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_6d
    move-exception v0

    :try_start_6e
    iget-object v1, p0, Lcom/c/di;->c:Lcom/c/bp;

    sget-object v2, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_6a
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_79} :catch_5d

    goto :goto_3b
.end method

.method private a(Landroid/telephony/ServiceState;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/c/di;->c:Lcom/c/bp;

    invoke-virtual {v0}, Lcom/c/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/c/di;->c:Lcom/c/bp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/di;->n:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_29
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_42

    :goto_30
    :pswitch_30
    return-void

    :pswitch_31
    invoke-direct {p0}, Lcom/c/di;->h()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_30

    :catch_35
    move-exception v0

    iget-object v1, p0, Lcom/c/di;->c:Lcom/c/bp;

    sget-object v2, Lcom/c/di;->n:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method

.method private a(Lcom/c/ak;Ljava/util/List;)V
    .registers 7

    sget v1, Lcom/c/ak;->c:I

    if-eqz p2, :cond_6

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/ak;

    invoke-virtual {v0}, Lcom/c/ak;->a()Lcom/c/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/ak;->a()Lcom/c/l;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/c/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    if-eqz v1, :cond_b

    goto :goto_6
.end method

.method static synthetic a(Lcom/c/di;)V
    .registers 1

    invoke-direct {p0}, Lcom/c/di;->f()V

    return-void
.end method

.method static synthetic a(Lcom/c/di;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/c/di;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/c/di;Landroid/telephony/CellLocation;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/c/di;->a(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic a(Lcom/c/di;Landroid/telephony/ServiceState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/c/di;->a(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private declared-synchronized b(Ljava/util/ArrayList;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/c/di;->i:Lcom/c/l;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/c/di;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/c/di;->k:Lcom/c/ba;

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/c/ak;

    iget-object v1, p0, Lcom/c/di;->i:Lcom/c/l;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/c/di;->l:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-wide v4, p0, Lcom/c/di;->j:J

    iget-object v6, p0, Lcom/c/di;->k:Lcom/c/ba;

    invoke-direct/range {v0 .. v6}, Lcom/c/ak;-><init>(Lcom/c/l;IIJLcom/c/ba;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/c/di;->m:Ljava/util/List;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/c/di;->m:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    :cond_2b
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(Ljava/lang/String;)[C
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object v1, v0

    :goto_5
    array-length v0, v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_13

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    aget-char v2, v1, v0

    xor-int/lit8 v2, v2, 0x2f

    int-to-char v2, v2

    aput-char v2, v1, v0

    :cond_13
    return-object v1

    :cond_14
    move-object v0, v1

    goto :goto_5
.end method

.method private declared-synchronized f()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/c/di;->h:Landroid/telephony/PhoneStateListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_67

    if-eqz v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Lcom/c/u;

    invoke-direct {v0, p0}, Lcom/c/u;-><init>(Lcom/c/di;)V

    iput-object v0, p0, Lcom/c/di;->h:Landroid/telephony/PhoneStateListener;

    iget-object v0, p0, Lcom/c/di;->e:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/c/di;->h:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/c/di;->d:Landroid/content/Context;

    sget-object v1, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_67

    move-result v0

    if-nez v0, :cond_7a

    :try_start_25
    iget-object v0, p0, Lcom/c/di;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_42

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_42
    iget-object v1, p0, Lcom/c/di;->e:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/c/di;->c:Lcom/c/bp;

    sget-object v1, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v2, 0x1e

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_25 .. :try_end_55} :catchall_67
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25 .. :try_end_55} :catch_56
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_55} :catch_6a

    goto :goto_5

    :catch_56
    move-exception v0

    :try_start_57
    iget-object v1, p0, Lcom/c/di;->c:Lcom/c/bp;

    sget-object v2, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_57 .. :try_end_66} :catchall_67

    goto :goto_5

    :catchall_67
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_6a
    move-exception v0

    :try_start_6b
    iget-object v1, p0, Lcom/c/di;->c:Lcom/c/bp;

    sget-object v2, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget v0, Lcom/c/ak;->c:I

    if-eqz v0, :cond_5

    :cond_7a
    iget-object v0, p0, Lcom/c/di;->c:Lcom/c/bp;

    sget-object v1, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_6b .. :try_end_85} :catchall_67

    goto :goto_5
.end method

.method private declared-synchronized g()V
    .registers 9

    monitor-enter p0

    :try_start_1
    sget v7, Lcom/c/ak;->c:I

    iget-object v0, p0, Lcom/c/di;->i:Lcom/c/l;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/c/di;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/c/di;->k:Lcom/c/ba;

    if-nez v0, :cond_1c

    :cond_f
    iget-object v0, p0, Lcom/c/di;->c:Lcom/c/bp;

    sget-object v1, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_86

    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    :cond_1c
    :try_start_1c
    new-instance v0, Lcom/c/ak;

    iget-object v1, p0, Lcom/c/di;->i:Lcom/c/l;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/c/di;->l:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-wide v4, p0, Lcom/c/di;->j:J

    iget-object v6, p0, Lcom/c/di;->k:Lcom/c/ba;

    invoke-direct/range {v0 .. v6}, Lcom/c/ak;-><init>(Lcom/c/l;IIJLcom/c/ba;)V

    iget-object v1, p0, Lcom/c/di;->f:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/c/di;->a(Lcom/c/ak;Ljava/util/List;)V

    iget-object v1, p0, Lcom/c/di;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/c/di;->m:Ljava/util/List;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/c/di;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/ak;

    iget-object v2, p0, Lcom/c/di;->f:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Lcom/c/di;->a(Lcom/c/ak;Ljava/util/List;)V

    if-eqz v7, :cond_42

    :cond_55
    iget-object v0, p0, Lcom/c/di;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/c/di;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/di;->m:Ljava/util/List;

    :cond_5f
    iget-object v0, p0, Lcom/c/di;->c:Lcom/c/bp;

    invoke-virtual {v0}, Lcom/c/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/c/di;->c:Lcom/c/bp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v3, 0x18

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/c/di;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_1c .. :try_end_85} :catchall_86

    goto :goto_1a

    :catchall_86
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/c/di;->c:Lcom/c/bp;

    sget-object v1, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/c/di;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/di;->i:Lcom/c/l;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/di;->l:Ljava/lang/Integer;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/c/di;->j:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/di;->k:Lcom/c/ba;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/di;->m:Ljava/util/List;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected a(Lcom/c/b;)Lcom/c/da;
    .registers 3

    new-instance v0, Lcom/c/di;

    invoke-direct {v0, p1}, Lcom/c/di;-><init>(Lcom/c/b;)V

    return-object v0
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/c/di;->b(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/c/di;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/c/di;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Lcom/c/di;->e:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_f

    new-instance v0, Lcom/c/an;

    sget-object v1, Lcom/c/di;->n:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/c/an;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    monitor-enter p0

    :try_start_10
    iget-object v0, p0, Lcom/c/di;->h:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_16

    monitor-exit p0

    :goto_15
    return-void

    :cond_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_2a

    :try_start_17
    new-instance v0, Lcom/c/g;

    invoke-direct {v0, p0}, Lcom/c/g;-><init>(Lcom/c/di;)V

    invoke-static {v0}, Lcom/c/cq;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_27} :catch_28
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_27} :catch_2d

    goto :goto_15

    :catch_28
    move-exception v0

    goto :goto_15

    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0

    :catch_2d
    move-exception v0

    new-instance v1, Lcom/c/an;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lcom/c/an;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized c()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/c/di;->h:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/c/di;->d:Landroid/content/Context;

    sget-object v1, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_5e

    move-result v0

    if-nez v0, :cond_38

    :try_start_13
    iget-object v0, p0, Lcom/c/di;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_30

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_30
    iget-object v1, p0, Lcom/c/di;->e:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_5e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13 .. :try_end_38} :catch_4d
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_38} :catch_61

    :cond_38
    :goto_38
    :try_start_38
    iget-object v0, p0, Lcom/c/di;->e:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/c/di;->h:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/di;->h:Landroid/telephony/PhoneStateListener;

    :cond_43
    iget-object v0, p0, Lcom/c/di;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/c/di;->h()V
    :try_end_4b
    .catchall {:try_start_38 .. :try_end_4b} :catchall_5e

    monitor-exit p0

    return-void

    :catch_4d
    move-exception v0

    :try_start_4e
    iget-object v1, p0, Lcom/c/di;->c:Lcom/c/bp;

    sget-object v2, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v3, 0x15

    aget-object v2, v2, v3

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5d
    .catchall {:try_start_4e .. :try_end_5d} :catchall_5e

    goto :goto_38

    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_61
    move-exception v0

    :try_start_62
    iget-object v1, p0, Lcom/c/di;->c:Lcom/c/bp;

    sget-object v2, Lcom/c/di;->n:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6d
    .catchall {:try_start_62 .. :try_end_6d} :catchall_5e

    goto :goto_38
.end method

.method public d()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/c/di;->n:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public e()Z
    .registers 2

    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/c/di;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
