package gui;

import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.Point;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.sql.Date;
import java.util.List;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JInternalFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.SwingConstants;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;

import entidad.Sala;
import model.SalaModel;
import util.Validaciones;

public class FrmCrudSala  extends JInternalFrame implements ActionListener, MouseListener  {

	private static final long serialVersionUID = 1L;
	private JLabel lblFechaRegistro;
	private JTextField txtNumero;
	private JTextField txtPiso;
	private JTextField txtCapacidad;
	private JTextField txtRecursos;
	private JTextField txtEstado;
	private JTextField txtFechaRegistro;
	private JTable table;
	private JButton btnInsertar;
	private JButton btnActualizar;
	private JButton btnEliminar;
	
	private int idSeleccionado=-1;
	int hoveredRow = -1, hoveredColumn = -1;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					FrmRegistroUsuario frame = new FrmRegistroUsuario();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
		
	}

	/**
	 * Create the frame.
	 */
	public FrmCrudSala() {
		getContentPane().setFont(new Font("Dialog", Font.BOLD, 14));
		setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
		setMaximizable(true);
		setIconifiable(true);
		setClosable(true);
		setTitle("Mantenimiento de Sala");
		setBounds(100, 100, 900, 550);
		getContentPane().setLayout(null);
		
		JLabel lblMantenimientoDeSala = new JLabel("Mantenimiento de Sala");
		lblMantenimientoDeSala.setHorizontalAlignment(SwingConstants.CENTER);
		lblMantenimientoDeSala.setFont(new Font("Tahoma", Font.BOLD, 19));
		lblMantenimientoDeSala.setBounds(101, 37, 641, 38);
		getContentPane().add(lblMantenimientoDeSala);
		
		JLabel lblNumero = new JLabel("N\u00FAmero :");
		lblNumero.setFont(new Font("Dialog", Font.BOLD, 14));
		lblNumero.setBounds(117, 115, 94, 14);
		getContentPane().add(lblNumero);
		
		JLabel lblPiso = new JLabel("Piso :");
		lblPiso.setFont(new Font("Dialog", Font.BOLD, 14));
		lblPiso.setBounds(117, 158, 62, 14);
		getContentPane().add(lblPiso);
		
		JLabel lblCapacidad = new JLabel("Capacidad :");
		lblCapacidad.setFont(new Font("Dialog", Font.BOLD, 14));
		lblCapacidad.setBounds(117, 197, 94, 14);
		getContentPane().add(lblCapacidad);
		
		JLabel lblRecursos = new JLabel("Recursos :");
		lblRecursos.setFont(new Font("Dialog", Font.BOLD, 14));
		lblRecursos.setBounds(427, 115, 94, 14);
		getContentPane().add(lblRecursos);
		
		JLabel lblEstado = new JLabel("Estado : ");
		lblEstado.setFont(new Font("Dialog", Font.BOLD, 14));
		lblEstado.setBounds(427, 158, 74, 14);
		getContentPane().add(lblEstado);
		
		lblFechaRegistro = new JLabel("Fecha Registro :");
		lblFechaRegistro.setFont(new Font("Dialog", Font.BOLD, 14));
		lblFechaRegistro.setBounds(427, 194, 126, 20);
		getContentPane().add(lblFechaRegistro);
		
		txtNumero = new JTextField();
		txtNumero.setBounds(233, 114, 86, 20);
		getContentPane().add(txtNumero);
		txtNumero.setColumns(10);
		
		txtPiso = new JTextField();
		txtPiso.setBounds(233, 157, 86, 20);
		getContentPane().add(txtPiso);
		txtPiso.setColumns(10);
		
		txtCapacidad = new JTextField();
		txtCapacidad.setBounds(233, 196, 86, 20);
		getContentPane().add(txtCapacidad);
		txtCapacidad.setColumns(10);
		
		txtRecursos = new JTextField();
		txtRecursos.setBounds(559, 114, 86, 20);
		getContentPane().add(txtRecursos);
		txtRecursos.setColumns(10);
		
		txtEstado = new JTextField();
		txtEstado.setBounds(559, 157, 86, 20);
		getContentPane().add(txtEstado);
		txtEstado.setColumns(10);
		
		txtFechaRegistro = new JTextField();
		txtFechaRegistro.setBounds(559, 196, 86, 20);
		getContentPane().add(txtFechaRegistro);
		txtFechaRegistro.setColumns(10);
		
		btnInsertar = new JButton("Insertar");
		btnInsertar.addActionListener(this);
		btnInsertar.setBounds(752, 111, 89, 23);
		getContentPane().add(btnInsertar);
		
		btnActualizar = new JButton("Actualizar");
		btnActualizar.addActionListener(this);
		btnActualizar.setBounds(752, 154, 89, 23);
		getContentPane().add(btnActualizar);
		
		btnEliminar = new JButton("Eliminar");
		btnEliminar.addMouseListener(this);
		btnEliminar.addActionListener(this);
		btnEliminar.setBounds(752, 193, 89, 23);
		getContentPane().add(btnEliminar);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(23, 232, 818, 261);
		getContentPane().add(scrollPane);
		
		table = new JTable();
		table.addMouseListener(this);
		table.setModel(new DefaultTableModel(
			new Object[][] {
			},
			new String[] {
				"ID", "N?mero", "Piso", "Capacidad", "Recursos", "Estado", "Fecha Registro"
			}
		));
		

		//alineaci?n
		DefaultTableCellRenderer rightRenderer = new DefaultTableCellRenderer();
		rightRenderer.setHorizontalAlignment(JLabel.CENTER);
		table.getColumnModel().getColumn(0).setCellRenderer(rightRenderer);
		table.getColumnModel().getColumn(2).setCellRenderer(rightRenderer);
		table.getColumnModel().getColumn(5).setCellRenderer(rightRenderer);
		table.getColumnModel().getColumn(6).setCellRenderer(rightRenderer);
		
		
		//tamano de la fila	
		table.getColumnModel().getColumn(0).setPreferredWidth(15);
		table.getColumnModel().getColumn(1).setPreferredWidth(120);
		table.getColumnModel().getColumn(2).setPreferredWidth(30);
		table.getColumnModel().getColumn(3).setPreferredWidth(100);
		table.getColumnModel().getColumn(4).setPreferredWidth(250);
		table.getColumnModel().getColumn(5).setPreferredWidth(50);
		table.getColumnModel().getColumn(6).setPreferredWidth(100);
		table.setAutoResizeMode(JTable.AUTO_RESIZE_LAST_COLUMN);
		
		//selecciona una sola fila
		table.setRowSelectionAllowed(true);
		table.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		
		//desabilita mover las columnas
		table.getTableHeader().setReorderingAllowed(false);
		
		//color de la fila seleccionada
		table.setSelectionBackground(Color.GREEN);
		
		//el mouse over
	    table.addMouseMotionListener(new MouseMotionListener() {
	        @Override
	        public void mouseMoved(MouseEvent e) {
	            Point p = e.getPoint();
	            hoveredRow = table.rowAtPoint(p);
	            hoveredColumn = table.columnAtPoint(p);
	            table.setRowSelectionInterval(hoveredRow, hoveredRow);
	            table.repaint();    
	        }
	        @Override
	        public void mouseDragged(MouseEvent e) {
	            hoveredRow = hoveredColumn = -1;
	            table.repaint();
	        }
	    });
	    
	    //No se pueda editar
	    table.setDefaultEditor(Object.class, null);
	    
		scrollPane.setViewportView(table);

		lista();

		//alineaci?n

				DefaultTableCellRenderer rightRenderer1 = new DefaultTableCellRenderer();

				rightRenderer1.setHorizontalAlignment(JLabel.CENTER);
				
				table.getColumnModel().getColumn(0).setCellRenderer(rightRenderer1);
				table.getColumnModel().getColumn(2).setCellRenderer(rightRenderer1);
				table.getColumnModel().getColumn(5).setCellRenderer(rightRenderer1);
				table.getColumnModel().getColumn(6).setCellRenderer(rightRenderer1);
		
		//selecciona una sola fila

			table.setRowSelectionAllowed(true);
			table.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
				
		//desabilita mover las columnas

			table.getTableHeader().setReorderingAllowed(false);
		
			//color de la fila seleccionada

			table.setSelectionBackground(Color.GREEN);
			
			
			table.addMouseMotionListener(new MouseMotionListener() {

			    @Override

			    public void mouseMoved(MouseEvent e) {

			      Point p = e.getPoint();

			      hoveredRow = table.rowAtPoint(p);

			      hoveredColumn = table.columnAtPoint(p);

			      table.setRowSelectionInterval(hoveredRow, hoveredRow);

			      table.repaint();   

			    }

			    @Override

			    public void mouseDragged(MouseEvent e) {

			      hoveredRow = hoveredColumn = -1;

			      table.repaint();

			    }

			  });
			
			
	}

	

	public void mensaje(String ms) {
		JOptionPane.showMessageDialog(this, ms);
	}
	void limpiarCajasTexto() {
		txtNumero.setText("");
		txtPiso.setText("");
		txtCapacidad.setText("");
		txtRecursos.setText("");
		txtEstado.setText("");
		txtFechaRegistro.requestFocus();
	}
	public void actionPerformed(ActionEvent e) {
		if (e.getSource() == btnEliminar) {
			actionPerformedBtnEliminarJButton(e);
		}
		if (e.getSource() == btnActualizar) {
			actionPerformedBtnActualizarJButton(e);
		}
		if (e.getSource() == btnInsertar) {
			actionPerformedBtnInsertarJButton(e);
		}
	}
	protected void actionPerformedBtnInsertarJButton(ActionEvent e) {
		inserta();
	}
	protected void actionPerformedBtnActualizarJButton(ActionEvent e) {
		actualiza();
	}
	protected void actionPerformedBtnEliminarJButton(ActionEvent e) {
		elimina();
	}
	public void mouseClicked(MouseEvent e) {
		if (e.getSource() == table) {
			mouseClickedTableJTable(e);
		}

	}
	public void mouseEntered(MouseEvent e) {
	}
	public void mouseExited(MouseEvent e) {
	}
	public void mousePressed(MouseEvent e) {
	}
	public void mouseReleased(MouseEvent e) {
	}
	protected void mouseClickedTableJTable(MouseEvent e) {
		busca();
	}
	
	public void lista() {
		DefaultTableModel dtm=(DefaultTableModel)table.getModel();
		dtm.setRowCount(0);
		
		SalaModel m= new SalaModel();
		List<Sala> lista= m.listaSala();
		
		for(Sala x: lista) {
			Object[] fila= {x.getIdSala(), x.getNumero(), x.getPiso(), x.getCapacidad(),x.getRecursos(),x.getEstado(),x.getFechaRegistro()};
			dtm.addRow(fila);
		}
	}
	public void busca() {
		int fila =table.getSelectedRow();
		idSeleccionado=(Integer)table.getValueAt(fila, 0);
		String num=(String)table.getValueAt(fila, 1);
	    int piso=(Integer)table.getValueAt(fila, 2);
		String capac=(String)table.getValueAt(fila, 3);
		String recur=(String)table.getValueAt(fila, 4);
		int estado=(Integer)table.getValueAt(fila, 5);
		Date fecha=(Date)table.getValueAt(fila, 6);
		
		txtNumero.setText(num);
		txtPiso.setText(String.valueOf(piso));
        txtCapacidad.setText(capac);
		txtRecursos.setText(recur);
        txtEstado.setText(String.valueOf(estado));
		txtFechaRegistro.setText(String.valueOf(fecha));
	}
	public void inserta() {
		String num = txtNumero.getText();
		String piso = txtPiso.getText();
		String capac = txtCapacidad.getText();
		String recur=txtRecursos.getText();
		String estado=txtEstado.getText();
		String fecha=txtFechaRegistro.getText();
		

		if(!recur.matches(Validaciones.TEXTO)) {
			mensaje("LOS RECURSOS ES DE 2 A 30 CARACTERES");
			return;
		}
		
		if(!fecha.matches(Validaciones.FECHA)) {
			mensaje("LA FECHA ES DE FORMATO YYYY-MM-DD");
			return;
		}
		
		if (!fecha.matches(Validaciones.FECHA)) {
			mensaje("La fecha es YYYY-MM-dd");
			return;
		}
		
		Sala obj = new Sala();
		obj.setNumero(num);
		obj.setPiso(Integer.parseInt(piso));
		obj.setCapacidad(capac);
		obj.setRecursos(recur);
		obj.setEstado(Integer.parseInt(estado));
		obj.setFechaRegistro(Date.valueOf(fecha));
		
		SalaModel model = new SalaModel();
		int s = model.insertaSala(obj);
		if(s>0) {
			lista();
			limpiarCajasTexto();
			mensaje("Registro exitoso");
		}else {
			mensaje("Error en el registro");
		}
	}
	public void elimina() {
		if(idSeleccionado==-1) {
			mensaje("Seleccione una fila");
		}else {
			SalaModel model = new SalaModel();
			int s = model.eliminaSala(idSeleccionado);
			if(s>0) {
				idSeleccionado =-1;
				lista();
				limpiarCajasTexto();
				mensaje("eliminacion exitosa");
			}else {
				mensaje("Error en la eliminacion");
			}
		}
	}
	public void actualiza() {
		String num = txtNumero.getText();
		String piso = txtPiso.getText();
		String capac = txtCapacidad.getText();
		String recur=txtRecursos.getText();
		String estado=txtEstado.getText();
		String fecha=txtFechaRegistro.getText();
		
		if(idSeleccionado==-1) {
			mensaje("Seleccione una fila de la tabla");
			return;
		}

		if(!recur.matches(Validaciones.TEXTO)) {
			mensaje("LOS RECURSOS ES DE 2 A 30 CARACTERES");
			return;
		}
		
		if(!fecha.matches(Validaciones.FECHA)) {
			mensaje("LA FECHA ES DE FORMATO YYYY-MM-DD");
			return;
		}
		
		if (!fecha.matches(Validaciones.FECHA)) {
			mensaje("La fecha es YYYY-MM-dd");
			return;
		}
		
		Sala obj = new Sala();
		obj.setIdSala(idSeleccionado);
		obj.setNumero(num);
		obj.setPiso(Integer.parseInt(piso));
		obj.setCapacidad(capac);
		obj.setRecursos(recur);
		obj.setEstado(Integer.parseInt(estado));
		obj.setFechaRegistro(Date.valueOf(fecha));
		
		SalaModel model = new SalaModel();
		int s = model.actualizaSala(obj);
		if(s>0) {
			idSeleccionado=-1;
			lista();
			limpiarCajasTexto();
			mensaje("Registro exitoso");
		}else {
			mensaje("Error en el registro");
		}
	}

}


