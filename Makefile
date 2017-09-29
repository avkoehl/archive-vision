#
NAME1=processImages
NAME2=scanDatabase
NAME3=drawMatches
NAME4=showKeypoints
NAME5=indexDatabase
NAME6=scanDatabaseImage

CC = g++
CFLAGS = -c -O
LDFLAGS = -O 
LIBS=-L/usr/local/lib
LIBRARIES=-lopencv_core -lopencv_nonfree -lopencv_imgproc -lopencv_highgui -lopencv_features2d -lopencv_flann -lopencv_contrib -lopencv_ml -lopencv_objdetect -lopencv_video -lopencv_videostab -lopencv_calib3d -lopencv_ocl -lopencv_photo -lopencv_stitching

$(NAME1) : $(NAME1).cpp
	$(CC) $(NAME1).cpp -o $(NAME1).exe $(LDFLAGS) $(LIBS) $(LIBRARIES) 

$(NAME2) : $(NAME2).cpp
	$(CC) $(NAME2).cpp -o $(NAME2).exe $(LDFLAGS) $(LIBS) $(LIBRARIES) 

$(NAME3) : $(NAME3).cpp
	$(CC) $(NAME3).cpp -o $(NAME3).exe $(LDFLAGS) $(LIBS) $(LIBRARIES) 

$(NAME4) : $(NAME4).cpp
	$(CC) $(NAME4).cpp -o $(NAME4).exe $(LDFLAGS) $(LIBS) $(LIBRARIES) 

$(NAME5) : $(NAME5).cpp
	$(CC) $(NAME5).cpp -o $(NAME5).exe $(LDFLAGS) $(LIBS) $(LIBRARIES) 

$(NAME6) : $(NAME6).cpp
	$(CC) $(NAME6).cpp -o $(NAME6).exe $(LDFLAGS) $(LIBS) $(LIBRARIES) 

all: 
	$(CC) $(NAME1).cpp -o $(NAME1).exe $(LDFLAGS) $(LIBS) $(LIBRARIES) 
	$(CC) $(NAME2).cpp -o $(NAME2).exe $(LDFLAGS) $(LIBS) $(LIBRARIES) 
	$(CC) $(NAME3).cpp -o $(NAME3).exe $(LDFLAGS) $(LIBS) $(LIBRARIES) 
	$(CC) $(NAME4).cpp -o $(NAME4).exe $(LDFLAGS) $(LIBS) $(LIBRARIES) 
	$(CC) $(NAME5).cpp -o $(NAME5).exe $(LDFLAGS) $(LIBS) $(LIBRARIES) 
	$(CC) $(NAME6).cpp -o $(NAME6).exe $(LDFLAGS) $(LIBS) $(LIBRARIES) 

clean:
	touch junk.o; rm -f *.o *.exe
