import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;

public class AMIDlet extends MIDlet implements CommandListener {
    private Display display;
    private Form form;
    private Command exitCommand;

    public AMIDlet() {
        display = Display.getDisplay(this);
        form = new Form("TEST J2ME COMPILE");
        form.append("Hallo this compiled J2ME with Temux!");
        exitCommand = new Command("exit", Command.EXIT, 0);
        form.addCommand(exitCommand);
        form.setCommandListener(this);
    }

    protected void startApp() {
        display.setCurrent(form);
    }

    protected void pauseApp() {}

    protected void destroyApp(boolean unconditional) {}

    public void commandAction(Command c, Displayable d) {
        if (c == exitCommand) {
            destroyApp(false);
            notifyDestroyed();
        }
    }
}
